require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:homepage)
  
end

get("/process_roll") do
  @num_dice = params["dice"].to_i
  @num_sides = params["sides"].to_i

  @rolls = []
  @num_dice.times do
    die = rand(1..@num_sides)
    @rolls.push(die) 
  end

  erb(:results)
end
