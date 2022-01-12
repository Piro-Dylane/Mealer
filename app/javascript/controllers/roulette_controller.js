import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['name'];



  displayName() {
    setTimeout(() => {
      this.nameTarget.classList.remove('d-none');
    }, 3000);
  }
}
