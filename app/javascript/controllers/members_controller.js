import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['members', 'description'];

  displayMembers() {
    this.membersTarget.classList.toggle('d-none');
    this.descriptionTarget.classList.toggle('d-none')
  }
}
