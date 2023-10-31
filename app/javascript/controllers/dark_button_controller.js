import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dark-button"
export default class extends Controller {
  connect() {
    // On page load or when changing themes, best to add inline in `head` to avoid FOUC
    if (localStorage.theme === 'dark' || (!('theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
      this.toDark();
    } else {
      this.toLight()
    }
  }

  toggle() {
    if(localStorage.theme === 'dark') {
      return this.toLight();
    }

    this.toDark();
  }

  toDark() {
    document.documentElement.classList.add('dark');
    localStorage.theme = 'dark';
  }

  toLight() {
    document.documentElement.classList.remove('dark');
    localStorage.theme = '';
  }
}
