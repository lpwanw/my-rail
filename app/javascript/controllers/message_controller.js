import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="message"
export default class extends Controller {
  connect() {
    const messagesBox = document.getElementById('messages')
    messagesBox.scrollTop = messagesBox.scrollHeight
  }
}
