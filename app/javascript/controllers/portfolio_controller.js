import { Controller } from "@hotwired/stimulus"
import { scroll, animate } from "motion"

// Connects to data-controller="portfolio"
export default class extends Controller {
  static targets = ["hero"]

  connect() {
    scroll(({ y }) => {
      let visibility;
      if(y.progress > 0.5) {
        visibility=  "hidden"
      } else {
        visibility=  "visible"
      }

      animate(this.heroTarget, { visibility }, { duration: 0 })
    });
  }
}
