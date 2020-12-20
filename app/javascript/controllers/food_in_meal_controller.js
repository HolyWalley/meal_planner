import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static values = { id: Number }
  static targets = ["test"]

  changeWeight(weight) {
    this.stimulate('FoodInMeal#change_weight', this.idValue, weight)
  }

  deleteFood() {
    this.stimulate('Meal#delete_food', this.idValue)
  }

  // handlers

  onDeleteClick(event) {
    event.preventDefault()
    this.deleteFood()
  }

  onMealInputBlured(event) {
    event.preventDefault()
    this.changeWeight(event.target.value)
  }

  onMealInputPressedDown(event) {
    if (event.keyCode === 13) {
      this.changeWeight(event.target.value)
      event.target.blur()
    }
  }
}
