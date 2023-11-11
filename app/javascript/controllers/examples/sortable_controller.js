import { Controller } from "@hotwired/stimulus";
import Sortable from "sortablejs";
import { put } from "@rails/request.js";

// Connects to data-controller="examples--sortable"
export default class extends Controller {
  connect() {
    this.sortable = Sortable.create(this.element, {
      onEnd: this.onEnd.bind(this),
      group: "tasks",
    })
  }

  onEnd(event) {
    const newStatus = event.to.dataset.status;
    const updateUrl = event.item.dataset.updateUrl;
    put(updateUrl, {
      body: JSON.stringify({status: newStatus})
    });
  }
}
