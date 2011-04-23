class FavoritesController < ApplicationController
  respond_to :json, :xml, :html, :js

  def index
    @favorites = Twitter.favorites(current_user.uid)
    respond_with(@favorites) do |format|
      format.js
    end
  end
  
  def unfavorite
    @tweets_for_destroy = params[:tweet_ids]
    
    @tweets_for_destroy.each do |tweet|
      Twitter.favorite_destroy(tweet)
    end
    
    respond_with(@favorite) do |format|
      format.html { redirect_to favorites_url, :notice => "Tweets were removed from your favorites." }
      format.xml { redirect_to favorites_url, :notice => "Tweets were removed from your favorites." }
    end
  end
end
