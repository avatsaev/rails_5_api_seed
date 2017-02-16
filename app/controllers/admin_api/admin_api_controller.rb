module AdminApi

  class AdminApiController < ApplicationController

    include ActionController::Serialization


    before_action :authenticate_admin!



  end

end
