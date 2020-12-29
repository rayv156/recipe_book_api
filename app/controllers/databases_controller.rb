class DatabasesController < ApplicationController
  before_action :authorized
  def random
    random = Faraday.get "https://api.spoonacular.com/recipes/random?number=20&apiKey=#{ENV["api_key"]}"
    @random_result = JSON.parse(random.body)
      render json: @random_result
  end

  def search
    term = params[:search_term]
    search = Faraday.get "https://api.spoonacular.com/recipes/complexSearch?query=#{term}&number=20&apiKey=#{ENV["api_key"]}"
    @search_result = JSON.parse(search.body)
      render json: @search_result
  
  end

  def instructions
    recipe = params[:recipe_id]
    instructions = Faraday.get "https://api.spoonacular.com/recipes/#{recipe}/information?includeNutrition=false&apiKey=#{ENV["api_key"]}"
    @instructions_result = JSON.parse(instructions.body)
      render json: @instructions_result
  
  end

  def information
    recipe_inf = params[:recipe_id]
    information = Faraday.get "https://api.spoonacular.com/recipes/#{recipe_inf}/analyzedInstructions?apiKey=#{ENV["api_key"]}"
    @information_result = JSON.parse(information.body)
      render json: @information_result
  p params[:recipe_id]
  end
end
