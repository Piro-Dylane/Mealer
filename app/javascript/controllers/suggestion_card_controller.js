import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form', 'icon'];

  displayFormSuggestion() {
    // this.infoTarget.classList.add('d-none');
    this.iconTarget.classList.add('d-none');
    this.formTarget.classList.remove('d-none');
  }
}
