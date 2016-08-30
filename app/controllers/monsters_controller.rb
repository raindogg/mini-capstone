class MonstersController < ApplicationController
  def cthulu
    @monster = Monster.find(3)
  end

  def index
    @monsters = Monster.all
  end
end
