class PhotosController < ApplicationController

  def index

  end

  def show

  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    @photo.file = params[:photo][:file]
    if @photo.save
      render 'index'
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
