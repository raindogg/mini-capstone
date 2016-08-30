class MonstersController < ApplicationController
  def cthulu
    @monster = Monster.find(3)
  end

end
