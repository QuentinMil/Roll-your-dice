class DicesController < ApplicationController
  def index
    @dices = Dice.all
  end
end
