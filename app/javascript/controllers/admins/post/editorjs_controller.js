import { Controller } from "@hotwired/stimulus"
import EditorJS from "@editorjs/editorjs"

// Connects to data-controller="admins--post--editorjs"
export default class extends Controller {
  connect() {
    this.editor = new EditorJS({
      holder: "editorjs",
    })
  }
}
