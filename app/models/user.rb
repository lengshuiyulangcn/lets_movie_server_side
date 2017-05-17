# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nickname   :string
#  avatar_url :string
#  open_id    :string
#  session_id :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  def self.from_token_request request
    User.find_or_create_by_wechat(request)
  end

  def self.find_or_create_by_wechat(request)
    code = request.params["code"]
    nickname  = request.params["user_info"]["nickName"]
    avatar_url = request.params["user_info"]["avatarUrl"]
    return nil unless code
    wechat_request_url  = "https://api.weixin.qq.com/sns/jscode2session?appid=#{ENV["WECHAT_APP_ID"]}&secret=#{ENV["WECHAT_APP_SECRET"]}&js_code=#{code}&grant_type=authorization_code"
    response = HTTParty.post(wechat_request_url)
    open_id = JSON.load(response.body)["openid"]
    session_id = JSON.load(response.body)["session_key"]
    return nil unless open_id
    entity = self.find_or_create(open_id: open_id) do |user|
 			user.nickname = nickname
      user.avatar_url = avatar_url
			user.session_id = session_id
		end
    return entity
  end
end
