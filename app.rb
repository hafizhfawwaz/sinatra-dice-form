require "sinatra"
require "sinatra/reloader"

get("/") do
    
  erb(:homepage)

end

get("/process_roll") do
  
  @dice_num = params.fetch("dice").to_i
  @side_num = params.fetch("sides").to_i

  @query = "?dice=#{@dice_num}&sides=#{@side_num}"

  @roll = []

  @dice_num.times do
    a_roll = rand(1..@side_num)
    @roll.push(a_roll)
  end

  erb(:roll_page)

end
