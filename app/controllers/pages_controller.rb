class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "Contract"
  end

  def about
    @title = "About"
  end
end
