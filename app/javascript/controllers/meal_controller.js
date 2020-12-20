import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static values = { }

  addFood(event) {
    event.preventDefault()
    this.stimulate('Meal#add_food', event.target.value)
  }
}
