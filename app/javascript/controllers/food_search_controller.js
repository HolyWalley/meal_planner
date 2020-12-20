import ApplicationController from './application_controller'

export default class extends ApplicationController {
  typingTimer
  doneTypingInterval = 100

  onSearch(event) {
    clearTimeout(this.typingTimer)

    if (event.target.value.length >= 3) {
      this.typingTimer = setTimeout(() => this.searchFood(event.target.value), this.doneTypingInterval)
    }
  }

  searchFood(name) {
    this.stimulate('Food#search', name)
  }
}
