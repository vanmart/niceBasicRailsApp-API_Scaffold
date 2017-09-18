class HomeController < ApplicationController
  layout "application", only: [:welcome]
  layout "layoutvideo", only: [:landing]

  skip_before_action :authenticate_user!, :only => [:landing]
  def landing
  end

  def welcome
  end
end
