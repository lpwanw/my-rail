import { Controller } from "@hotwired/stimulus"
import { HighlightJS } from "highlight.js";

// Connects to data-controller="post--code-render"
export default class extends Controller {
  connect() {
    HighlightJS.highlightElement(this.element)
  }
}
