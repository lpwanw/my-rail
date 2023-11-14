import { Controller } from "@hotwired/stimulus"
import { scroll, animate } from "motion"

// Connects to data-controller="portfolio"
export default class extends Controller {
  static targets = ["hero", "about", "service", "showcases", "contact", "deepLink"];

  connect() {
    scroll(({ y }) => {
      let visibility;
      if(y.progress > 0.5) {
        visibility=  "hidden";
      } else {
        visibility=  "visible";
      }

      animate(this.heroTarget, { visibility }, { duration: 0 });
    });

    this.deepLinkTargets.forEach(link => {
      link.addEventListener("click", () => {
        const target = link.dataset.target;
        this.scrollTo(target);
      });
    });
  }

  scrollTo(target) {
    switch (target) {
      case "about": {
        this.aboutTarget.scrollIntoView({behavior: "smooth"});
        break;
      }
      case "service": {
        this.serviceTarget.scrollIntoView({behavior: "smooth"})
        break;
      }
      case "showcases": {
        this.showcasesTarget.scrollIntoView({behavior: "smooth"})
        break;
      }
      case "contact": {
        this.contactTarget.scrollIntoView({behavior: "smooth"})
        break;
      }
    }
  }
}
