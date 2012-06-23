class PagesController < ApplicationController
  def index
    @songs = Song.all
    @games = Game.all
    respond_to do |format|
      format.html
      format.json
    end
  end
end
