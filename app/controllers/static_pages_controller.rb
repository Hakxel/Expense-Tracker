class StaticPagesController < ApplicationController
  def home
    @title = "Inicio"
  end

  def about
    @title = "Acerca de"
  end
end
