import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="clear-form"
export default class extends Controller {
  static targets = [ "input" ]

  connect() {
  }

  clear() {
    this.inputTarget.value = ""
  }
}
