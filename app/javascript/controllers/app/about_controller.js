import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="app--about"
export default class extends Controller {
  static targets = [ "tabItem", "contentItem", "tabMenu", "tabButton", "stick" ]

  connect() {
    this.element.addEventListener("scroll", (event) => {
      if(window.innerWidth > 768 || !(this.tabMenuTarget.dataset.active === "true")) return;

      this.tabMenuTarget.style.top = `${8 + this.element.scrollTop}px`
    });
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

    this.toggleTabMenu();
  }

  toggleTabMenu() {
    for(let item of this.stickTargets) {
      if(this.isOpen) {
        item.dataset.submenu = "open"
      } else {
        item.dataset.submenu = "close"
      }
    }

    if(!(this.tabMenuTarget.dataset.active === "true")) {
      this.tabMenuTarget.dataset.active = "true"
      for(let item of this.stickTargets) {
          item.dataset.active = "true"
      }
    } else {
      this.tabMenuTarget.dataset.active = "false"
      for(let item of this.stickTargets) {
        item.dataset.active = "false"
      }
    }

    this.tabMenuTarget.style = {}
  }
}
