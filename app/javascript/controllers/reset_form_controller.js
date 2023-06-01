import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reset-form"
export default class extends Controller {
  connect() {
    console.log("Hello from our first Stimulus controller")
    this.element.textContent = "Hello hello reset form!"

  }

  reset() {
    this.element.reset()
  }
}
