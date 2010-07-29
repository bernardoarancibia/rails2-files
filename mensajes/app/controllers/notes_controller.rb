class NotesController < ApplicationController

  def index 
    redirect_to :action => 'list'
  end

  def create 
    # Creation of a new note
    if params[:note] # if there are parameters pased
      if @user = User.find_by_id(params[:note][:user_id]) # if the user exist
        @note = Note.new(params[:note])
        @note.save
        flash[:notice] = 'The note creation was perfectly done'
      else 
        flash[:error] = 'The user doesn\'t exist'
      end
      redirect_to :action => 'list'
    end
  end

  def list
    # Get all the note records from notes db table
    @notes = Note.find :all, :order => 'updated_at desc'
  end

  def show 
    @note = Note.find_by_id params[:id]
  end

  def destroy
    Note.find_by_id(params[:id]).destroy    
    flash[:notice] = 'The note destroying was perfectly done'
    redirect_to :action => 'list'
  end

  private #-------------------------

end
