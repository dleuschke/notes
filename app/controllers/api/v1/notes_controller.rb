module Api::V1
  class NotesController < ApiController
    before_action :authenticate_request!
    before_action :set_note, only: [:show, :update, :destroy, :drop, :grab]
    before_action :set_origin, only: [:drop, :grab, :search]

    # GET /notes
    def index
      @notes = Note.where(user: current_user)

      render json: @notes
    end

    # POST /drop/1
    def drop
      @note.drop @origin
      if @note.save
        render json: nil, status: :ok
      else
        render json: @note.errors, status: :unprocessable_entity
      end
    end

    # POST /grab/1
    def grab
      @note.grab @current_user

      if @note.save
        render json: @note
      else
        render json: @note.errors, status: :unprocessable_entity
      end
    end

    # GET /notes/search
    def search
      @notes = Note.within(0.2, units: :kms, @origin)

      render json: @notes
    end

    # GET /notes/1
    def show
      render json: @note
    end

    # POST /notes
    def create
      @note = Note.new(note_params)

      if @note.save
        render json: @note, status: :created, location: @note
      else
        render json: @note.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /notes/1
    def update
      if @note.update(note_params)
        render json: @note
      else
        render json: @note.errors, status: :unprocessable_entity
      end
    end

    # DELETE /notes/1
    def destroy
      @note.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_note
        @note = Note.find(params[:id])
      end

      def set_origin
        lat = params[:lat]
        lng = params[:lng]
        @origin = Geokit::LatLng.new(lat, lng)
      end

      # Only allow a trusted parameter "white list" through.
      def note_params
        params.require(:note).permit(:user_id, :content, :lat, :lng)
      end
  end
  end
end