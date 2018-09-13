class ApplicationController < ActionController::API
    include ActionController::MimeResponds
    include Geokit::Geocoders
    respond_to :json
end
