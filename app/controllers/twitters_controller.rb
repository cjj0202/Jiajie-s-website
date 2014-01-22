class TwittersController < ApplicationController
  def new
    @twitter = TwitterSearch.new
  end

  def create
  #render text: params[:twitter].inspect
  @twitter = TwitterSearch.new(params[:twitter].permit(:search))
  @twitter.save
  #render text: TwitterSearch.last.search
  redirect_to twitters_path
  end

end
