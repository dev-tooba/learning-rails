class ApplicationController < ActionController::Base
    #protect_from_frogery with :exception 
    include DeviseWhitelist
    include SetSource
    include GuestUser
    include DefaultPageContent 
end