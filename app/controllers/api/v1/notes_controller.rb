module Api::V1
  class NotesController < ApiController
    before_action :authenticate_request!

    def index
      render json: {'logged_in' => true}
    end
  end
end