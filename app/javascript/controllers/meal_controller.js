import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static targets = [ ]
  static values = { }

  addFood(event) {
    event.preventDefault()
    this.stimulate('Meal#add_food', event.target.value)
  }

  deleteFood(event) {
    event.preventDefault()
    this.stimulate('Meal#delete_food', event.target.dataset.id)
  }
}
