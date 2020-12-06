# frozen_string_literal: true

class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
    @meal.foods_in_meals.new
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      redirect_to :meals
    else
      render :new
    end
  end

  def update
    @meal = Meal.find(params[:id])

    if @meal.update(meal_params)
      redirect_to :meals
    else
      render :edit_meal
    end
  end

  def destroy
    @meal = Meal.find(params[:id])

    if @meal.destroy
      redirect_to :meals
    else
      render :meal
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :photo, foods_in_meals_attributes: %i[food_grams food_id])
  end
end
