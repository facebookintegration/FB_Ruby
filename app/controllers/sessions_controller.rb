class SessionsController < ApplicationController
  def new
  end

  def create
  	auth_hash = request.env['omniauth.auth']
  @image =auth_hash["info"]["image"]
  @access= auth_hash["credentials"]["token"]
  @graph = Koala::Facebook::GraphAPI.new(@access)
  @graph.put_connections("me", "feed", :message => " Am able to post in Facebook ")
  end

  def failure
  end
end
