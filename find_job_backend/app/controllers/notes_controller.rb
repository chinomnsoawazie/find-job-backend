class NotesController < ApplicationController
    def create
      note = Note.create(note_params)
      userNotes = User.find(params[:user_id]).notes
      if note.valid?
        render json: {userNotes: userNotes}
      else
        render json:{errors: note.errors.full_messages}
      end
    end
    
    def update
      note = Note.find(params[:id])
      userNotes = User.find(params[:user_id]).notes
      if note.update(note_params)
        render json: {userNotes: userNotes}
      else
        render json: note.errors, status: :unprocessable_entity
      end
    end
    
    def destroy
        Note.destroy(params[:id])
        userNotes = User.find(params[:user_id]).notes
        render json: {userNotes: userNotes}
    end
    
    private
    def note_params
        params.require(:note).permit(:id, :job_id, :text, :user_id)
    end
end