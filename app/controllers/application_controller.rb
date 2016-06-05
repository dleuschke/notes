class ApplicationController < ActionController::API
  include Pundit
  include ActionController::Serialization
end
