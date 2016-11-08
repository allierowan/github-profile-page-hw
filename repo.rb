require 'httparty'

class Repo
  attr_reader :username, :repos

  BASE_URI = "https://api.github.com"

  def initialize(username)
    @username = username
  end

  def repos
    @repos ||=  HTTParty.get("#{BASE_URI}/users/#{username}/repos")
  end

  def repo_names
    repos.map { |hash| hash["name"] }
  end

end
