class ApplicationController < ActionController::Base
  respond_to :html, :json
  include Pundit
end
