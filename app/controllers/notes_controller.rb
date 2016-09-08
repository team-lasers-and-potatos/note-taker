class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @notes = Note.create(title: :title,body: :body)
  end
end
