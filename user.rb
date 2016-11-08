require 'httparty'
require './github_api'

class User < GithubApi
  attr_reader :profile, :user_info

  def user_info
    @user_info ||=  HTTParty.get("#{BASE_URI}/users/#{username}", :headers => {"Authorization" => "token #{ENV["GITHUB_TOKEN"]}", "User-Agent" => "arowan11"})
  end

end
