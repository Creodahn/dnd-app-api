class UnauthIndexAllowedController < ApplicationController
  skip_before_action :validate_current_user, :only => [:index]
end