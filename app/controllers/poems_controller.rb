class PoemsController < ApplicationController
  before_action :set_poem, only: [:show]
  def index
    @poems = Poem.all
  end

  def show
  end

  private

  def set_poem
    @poem = Poem.find(params[:id])
  end
end
