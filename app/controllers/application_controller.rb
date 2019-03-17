require './config/environment'

class ApplicationController < Sinatra::Base
<<<<<<< HEAD
  set :views, Proc.new {File.join(root, "../views/") }

=======
  set :views, Proc.new {File.join(root, "../views/")}
>>>>>>> e7a3f4bd69902b6ee5c00cba52aad2e50f65f501
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

<<<<<<< HEAD
  get "/recipes" do
    @recipes = Recipe.all
    erb :index
  end

  get "/recipes/new" do
    erb :new
  end

  post "/recipes" do
    @recipe = Recipe.create(params)
    redirect "/recipes/#{recipe.id}"
  end

  get "/recipes/:id" do
    @recipe = Recipe.find(params[:id])
    erb :show
  end

  get "/recipes/:id/edit" do
    @recipe = Recipe.find(params[:id])
    erb :edit
  end

  patch "/recipes/:if" do
    params.delete("_method")
    @recipe = Recipe.find(params[:id])
    @recipe.update(params)
    redirect "/recipes/#{@recipe.id}"
  end

  delete "/recipes/:id" do
    Recipe.find(params[:id]).destroy
    redirect "/recipes"
  end 
=======
get "/recipes" do
  @recipes = Recipe.all
  erb :index
end

get "/recipes/new" do
  erb :new
end

post "/recipes" do
  @recipe = Recipe.create(params)
  redirect "/recipes/#{@recipe.id}"
end

get "/recipes/:id" do
  @recipe = Recipe.find(params[:id])
  erb :show
end

get "/recipes/:id/edit" do
  @recipe = Recipe.find(params[:id])
  erb :edit
end

patch "/recipes/:id" do
  params.delete("_method")
  @recipe = Recipe.find(params[:id])
  @recipe.update(params)
  redirect "/recipes/#{recipe.id}"
end

delete "/recipes/:id" do
  Recipe.find(params[:id]).destroy
  redirect "/recipes"
end

>>>>>>> e7a3f4bd69902b6ee5c00cba52aad2e50f65f501

end
