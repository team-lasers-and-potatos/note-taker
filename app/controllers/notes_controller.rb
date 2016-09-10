class NotesController < ApplicationController
  def index
    @notes = Note.where(user_id:current_user.id)
  end

  def new
    @notes = Note.new
  end

  def create
    @notes = Note.new(note_params)
    @notes.user_id = current_user.id
    if @notes.save && !@notes.nil?
      redirect_to notes_path
    end
  end

  def show
    @notes = Note.find_by("id" => params[:id])
  end

  def edit
    @notes = Note.find_by("id" => params[:id])
  end

  def update
    @notes = Note.find_by("id" => params[:id])
    if @notes.update(note_params)
      redirect_to @notes
    else
      redirect_to notes_path
    end
  end

  def destroy
    @notes = Note.destroy
  end

  private
  def note_params
   params.require(:note).permit(:title, :body, :id)
  end
end
