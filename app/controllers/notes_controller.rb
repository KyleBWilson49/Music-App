class NotesController < ApplicationController
  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id

    if @note.save
      redirect_to track_url(@note.track_id)
    else
      redirect_to track_url(@note.track_id)
    end
  end

  def destroy
    @note = Note.find(params[:id]).destroy
    redirect_to track_url(@note.track_id)
  end

  private
  def note_params
    params.require(:note).permit(:note_text, :track_id)
  end
end
