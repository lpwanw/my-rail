import { Controller } from "@hotwired/stimulus"
import { animate } from "motion"
// Connects to data-controller="app-window"
export default class extends Controller {
  connect() {
    this.dockIcon = document.getElementById(`${this.element.id}DockIcon`)
    this.size = "min";
    if(this.dockIcon) {
      this.dockIcon.dataset.active = "true";
      this.dockIcon.dataset.onscreen = "true";
      this.url = this.dockIcon.getAttribute("href")
      this.dockIcon.setAttribute("disabled", "disabled")
      this.dockIcon.addEventListener("click", (event) => {
        this.handleDockIconClick();
        if(this.dockIcon.dataset.active === "true") {
          event.preventDefault();
        }
      });
    }

    this.fullScreen();
  }

  fullScreen() {
    if(this.size !== "full") {
      animate(this.element, {
        height: "calc(100% - 4rem)", width: "100%",
        x: 0, y: 0, top: 0 , left: 0, scale: 1
      })
      this.updateSize("full")
      this.dockIcon.dataset.onscreen = "true";
    } else {
      this.inScreen();
    }
  }

  minimize() {
    animate(this.element, { scale: 0, left: "0px", bottom: "0px" })
    this.dockIcon.dataset.onscreen = "";
    this.updateSize("min")
  }

  inScreen() {
    animate(this.element, {
      height: "50%", width: "50%",
      x: "-50%", y: "-50%", top: "50%" , left: "50%", scale: 1
    })
    this.updateSize("in")
    this.dockIcon.dataset.onscreen = "true";
  }

  updateSize(size) {
    this.oldSize = this.size
    this.size = size
  }

  remove() {
    this.dockIcon.dataset.active = "false";
    this.dockIcon.dataset.onscreen = "false";
    this.dockIcon.setAttribute("href", this.url);
    this.element.remove();
  }

  handleDockIconClick() {
    switch (this.oldSize){
      case "min":
        this.minimize();
        break;
      case "full":
        if(this.size === "in")
          this.minimize();
        else
          this.fullScreen();
        break;
      case "in":
        if(this.size === "full")
          this.minimize();
        else
          this.inScreen();
        break;
      default:
    }
  }
}
