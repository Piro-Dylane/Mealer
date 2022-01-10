import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form', 'icon'];

  displayForm() {
    // this.infoTarget.classList.add('d-none');
    this.iconTarget.classList.toggle('d-none');
    this.formTarget.classList.toggle('d-none');
  }
}
