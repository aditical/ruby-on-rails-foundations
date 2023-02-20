class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "MY AWESOME TITLE"
  end

  def home
    @projects = Project.all
  end
end
