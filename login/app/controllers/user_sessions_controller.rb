class UserSessionsController < ApplicationController  
  layout :choose_layout
  
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      respond_to do |wants|
        wants.html do 
          flash[:notice] = "Autenticaci&oacute;n exitosa!"
          redirect_to user_path
        end
        
        wants.js { render :redirect }
      end
    else
      respond_to do |wants|
        wants.html { render :new }
        wants.js # create.js.erb
      end
    end
  end
  
  def destroy
    current_user_session.destroy
    flash[:notice] = "Atenci&oacute;n! Ha salido exitosamente del sistema!"
    redirect_to root_path
  end
  
  private
  def choose_layout
    (request.xhr?) ? nil : 'application'
  end
end
