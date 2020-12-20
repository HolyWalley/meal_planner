# frozen_string_literal: true

class FoodSearchComponent < ViewComponent::Base
  def initialize(results: [])
    @results = results
  end
end
