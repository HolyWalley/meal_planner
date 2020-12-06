import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static targets = [ ]
  static values = { idx: Number }

  addFood(event) {
    event.preventDefault()
    this.stimulate('Meal#add_food', event.target.value, this.idxValue).then(() => {
      const newLine = document.getElementById('nextFoodLine').cloneNode()
      document.getElementById('nextFoodLine').removeAttribute('id')
      const addNewFoodRow = document.getElementById('addNewFoodRow')
      addNewFoodRow.parentNode.insertBefore(newLine, addNewFoodRow)
      this.idxValue++
    });
  }
}
