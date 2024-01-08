# frozen_string_literal: true

json.extract! admins_post, :id, :created_at, :updated_at
json.url admins_post_url(admins_post, format: :json)
