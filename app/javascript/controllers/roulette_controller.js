import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['name', 'firework'];



  displayName() {
    setTimeout(() => {
      this.nameTarget.classList.remove('d-none');
      this.fireworkTarget.classList.remove('d-none');
    }, 3000);
  }
}
