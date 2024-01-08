import { Controller } from "@hotwired/stimulus"
import EditorJS from "@editorjs/editorjs"
import Header from "@editorjs/header"
import Checklist from "@editorjs/checklist"
import Embed from "@editorjs/embed"
import List from "@editorjs/list"
import Paragraph from "@editorjs/paragraph"
import Quote from "@editorjs/quote"
import CodeTool from "@editorjs/code"

// Connects to data-controller="admins--post--editorjs"
export default class extends Controller {
  static targets = [ "body" ]

  connect() {
    this.editor = new EditorJS({
      holder: "editorjs",
      data: this.getInitialContent(),
      readOnly: this.readOnly(),
      tools: {
        header: Header,
        checklist: {
          class: Checklist,
          inlineToolbar: true,
        },
        embed: Embed,
        list: {
          class: List,
          inlineToolbar: true,
          config: {
            defaultStyle: 'unordered'
          }
        },
        paragraph: {
          class: Paragraph,
          inlineToolbar: true,
        },
        quote: Quote,
        code: CodeTool,
      }
    })
    console.log(this.getInitialContent())
  }

  saveData() {
    this.editor.save().then((outputData) => {
      const data = JSON.stringify(outputData)
      this.bodyTarget.value = data
    }).catch((error) => {
      console.log('Saving failed: ', error)
    });
  }

  getInitialContent() {
    const hiddenContentField = this.bodyTarget;
    if (hiddenContentField && hiddenContentField.value) {
      return JSON.parse(hiddenContentField.value);
    }
    return {};
  }

  readOnly() {
    return document.getElementById("editorjs").hasAttribute("readonly")
  }
}
