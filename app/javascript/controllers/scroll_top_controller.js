import { Controller } from "@hotwired/stimulus"
import { animate } from "motion"

// Connects to data-controller="scroll-top"
export default class extends Controller {
  connect() {
    this.element.addEventListener("click", () => {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    })
  }
}
