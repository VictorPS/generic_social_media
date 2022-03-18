import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  clearForm() {
    this.element.reset()
  }
}
