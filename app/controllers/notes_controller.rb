class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @notes = Note.new
  end

  def create
    @notes = Note.new(note_params)
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
    @notes = Note.update("id" => params[:id], note_params)
  end

  def destroy
    @notes = Note.destroy
  end

  private
  def note_params
   params.require(:note).permit(:title, :body, :id)
  end
end
