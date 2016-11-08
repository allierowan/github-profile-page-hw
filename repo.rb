require 'httparty'
require './github_api'

class Repo < GithubApi
  attr_reader :repos

  def repos
    @repos ||=  HTTParty.get("#{BASE_URI}/users/#{username}/repos")
  end

  def repo_names
    repos.map { |hash| hash["name"] }
  end

end
