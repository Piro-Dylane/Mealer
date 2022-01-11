import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['members'];

  displayMembers() {
    this.membersTarget.classList.toggle('d-none');
  }
}
