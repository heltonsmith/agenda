class ApplicationController < ActionController::Base
    require 'pagy/extras/bootstrap'
    
    Pagy::DEFAULT[:items] = 3
    include Pagy::Backend
end
