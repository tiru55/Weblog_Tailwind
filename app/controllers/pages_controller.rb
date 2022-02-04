class PagesController < ApplicationController
  
  before_action :set_current_user

  def home

  end

  def dashboard
  end
  

  private

  def set_current_user
       if current_user

        else
          redirect_to new_user_session_path
        end  
  end
end
