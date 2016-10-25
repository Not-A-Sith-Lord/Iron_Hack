require "sinatra"

get "/" do
	erb(:home)
end

get "/hi" do
	erb(:hipage)
end

get "/about" do
	erb(:about)
	end