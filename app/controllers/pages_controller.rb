class PagesController < ApplicationController
  
  before_action :authenticate_user!

  def home

  end

  def dashboard
  end

  def test
  end
  
  def profile
  end
  

  private
end
