class GalleriesController < ApplicationController

  def create
    @gallery = Gallery.create( params[:gallery] )
    @gallery.file_url=@gallery.file.url
    respond_to do |format|
      if @gallery.save
        format.html { redirect_to @gallery, notice: 'Photo was successfully added.' }
        format.json { render json: @gallery, status: :created, location: @gallery }
      else
        format.html { render action: "new" }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @galleries = Gallery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @galleries }
    end
  end

  def manage
    @galleries = Gallery.all
    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @galleries }
    end
  end

  def show
    @gallery = Gallery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gallery }
    end
  end

  def new
    @gallery = Gallery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gallery }
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy

    respond_to do |format|
      format.html { redirect_to galleries_path }
      format.json { head :no_content }
    end
  end

  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def gallery_params
  params.require(:gallery).permit(:file)
  end
end
