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
  end

  def edit
  end

  def destroy
    @notes = Note.destroy
  end

  private
  def note_params
   params.require(:note).permit(:title, :body)
  end
end
