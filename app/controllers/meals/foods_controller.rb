# frozen_string_literal: true

module Meals
  class FoodsController < ::ApplicationController
    def edit
      @meal ||= Meal.find(params[:meal_id])
    end
  end
end
