# frozen_string_literal: true

class Examples::MessagesController < ApplicationController
  def create
    head :no_content
    message = Examples::Message.new(message_params.merge(room: Examples::Room.find_by(name: "general")))

    return unless message.save

    Turbo::StreamsChannel.broadcast_append_to(
      message.room,
      target: "messages",
      partial: "examples/messages/message",
      locals: { message: }
    )
  end

  private

  def message_params
    params.require(:examples_message).permit(:content)
  end
end
