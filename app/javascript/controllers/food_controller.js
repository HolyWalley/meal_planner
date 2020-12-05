import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "prots", "carbs", "fats", "calories" ]
  static values = { calories: Number }

  connect() {
    this.recalculateCalories()
  }

  recalculateCalories() {
    this.caloriesValue = this.getter('prots') * 4 +
      this.getter('carbs') * 4 +
      this.getter('fats') * 9
  }

  caloriesValueChanged() {
    this.showCalories()
  }

  showCalories() {
    this.caloriesTarget.value = this.caloriesValue
  }

  getter(target) {
    return parseFloat(this[`${ target }Target`].value) || 0.0
  }
}
