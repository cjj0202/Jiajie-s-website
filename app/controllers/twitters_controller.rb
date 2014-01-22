class TwittersController < ApplicationController
  def new
    @twitter = TwitterSearch.new
  end

  def create

  @twitter2 = TwitterSearch.new(params[:twitter].permit(:search))
  @twitter2.save
  #render text: TwitterSearch.last.search
  redirect_to twitters_path
  end

end
