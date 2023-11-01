import { Controller } from "@hotwired/stimulus"
import { animate, spring } from "motion"

// Connects to data-controller="app--docker-icon"
export default class extends Controller {
  connect() {
  }

  toggle() {
    animate(
      this.element, { scale: [1, 0.7, 1] }, { duration: 1 }
    )
  }
}
