import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="app--about"
export default class extends Controller {
  static targets = [ "tabItem", "contentItem" ]

  connect() {
  }

  profile() {
    this.openTab("profile")
  }

  system() {
    this.openTab("system")
  }

  openTab(tab) {
    for (const item of this.contentItemTargets) {
      if(item.dataset.role === tab) {
        item.style.display = "block"
      } else {
        item.style.display = "none"
      }
    }

    for (const item of this.tabItemTargets) {
      if(item.dataset.role === tab) {
        item.dataset.active = "true"
      } else {
        item.dataset.active = "false"
      }
    }
  }
}
