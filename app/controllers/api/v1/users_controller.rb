class Api::V1::UsersController < Api::V1::ApiController
  before_action :authenticate_user


  def me
    @user = current_user
  end

  def update
    current_user.update!(user_params)
    render json:{response: "updated"}, status: 202
  end

  private
  def user_params
		 params.permit(:wechat_id)
  end
end
