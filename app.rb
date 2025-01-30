require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:homepage)
  
end

get("/process_rolls") do
  @num_dice = params["dice"].to_i
  @num_rolls = params["rolls"].to_i

  @rolls = []
  @num_dice.times do
    die = rand(1..@num_rolls)
    @rolls.push(die) 
  end

  erb(:results)
end
