class Api::TreasureRulesController < UnauthIndexAllowedController
  skip_before_action :validate_current_user, :only => [:index]
end
