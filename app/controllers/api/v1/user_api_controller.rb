module Api::V1

  class UserApiController < ApiController

    before_action :authenticate_v1_user!

  end

end


