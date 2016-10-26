require_relative("lib/calculator.rb")


require "sinatra"

# calc = Calculator.new

get "/" do
	erb(:home)
end

get "/add" do
  erb(:add)
end


get "/universal" do
  erb(:universal)
end

get "/subtract" do
  erb(:subtract)
end


get "/multiply" do
  erb(:multiply)
end


get "/divide" do
  erb(:divide)
end


post "/calculate" do
	erb(:calculate)

end

post "/save" do 
	erb(:save)
	

end
