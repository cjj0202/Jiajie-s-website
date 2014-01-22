class TwittersController < ApplicationController
  def new
    @twitter = TwitterSearch.new
  end

  def create

  @twitter = TwitterSearch.new(params[:twitter].permit(:search_text))
  @twitter.save
  #render text: TwitterSearch.last.search
  redirect_to twitters_path
  end

end
