class NotesController < ApplicationController
    def index
        notes = Note.all 
        render json: notes
    end
    
    def show
        note = Note.find(params[:id])
        render json: note
    end
    
    def create
        note = Note.create(note_params)
        if note.valid?
          render json: note
        else
          render json:{errors: note.errors.full_messages}
        end
    end
    
    def update
        note = Note.find(params[:id])
        if note.update(note_params)
          render json: note
        else
          render json: note.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Note.destroy(params[:id])
    end
    
    private
    
    def note_params
        params.require(:note).permit(:job_id, :text)
    end
end
