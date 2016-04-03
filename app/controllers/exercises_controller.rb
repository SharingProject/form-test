class ExercisesController < ApplicationController
  def index
    render text: "Hello world"
  end

  # step 1 - show form
  def new
  end

  # step 2 - after clicking on submit, this method is run
  def create
    @name = params[:school]
    @age = params[:age]
  end

  def show
    @number_of_lines = params[:id].to_i
  end

  def draw
    @name = params[:name]
  end
end

# /app/controller/exercises_controller.rb
