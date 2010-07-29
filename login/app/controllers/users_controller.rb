class UsersController < ApplicationController
  before_filter :login_required, :only => :show
  
  def index
  end
  
  def show
    @user = current_user
  end
  
  private
  def login_required
    unless current_user
      flash[:error] = 'Debes estar autentificado para poder ver esta pagina'
      redirect_to new_user_session_path
    end
  end
end
