class LandmarksController < ApplicationController

  get '/landmarks' do
    @landmarks = Landmark.all
  erb :'landmarks/index'

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params["landmark"])
    redirect to "/landmarks/#{@landmark.id}"
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end

  get '/landmarks/:id/edit'
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/edit'
  end

  patch '/landmarks/:id' do
    @landmark = Landmark.find(params["landmark"])
    redirect to '/landmarks/#{@landmark.id}'
  end

  delete '/landmarks/:id' do
    @landmark = Landmark.destroy(params[:id])
    redirect to "/landmarks"
  end
end
