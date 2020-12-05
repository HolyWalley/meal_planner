# frozen_string_literal: true

class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def edit
    @food = Food.find(params[:id])
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      redirect_to :foods
    else
      render :new_food
    end
  end

  def update
    @food = Food.find(params[:id])

    if @food.update(food_params)
      redirect_to :foods
    else
      render :edit_food
    end
  end

  def destroy
    @food = Food.find(params[:id])

    if @food.destroy
      redirect_to :foods
    else
      render :food
    end
  end

  private

  def food_params
    params.require(:food).permit(:name, :prots, :fats, :carbs, :photo)
  end
end
