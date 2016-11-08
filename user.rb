require 'httparty'
require './github_api'

class User < GithubApi
  attr_reader :profile, :user_info

  def user_info
    @user_info ||=  HTTParty.get("#{BASE_URI}/users/#{username}")
  end

end
