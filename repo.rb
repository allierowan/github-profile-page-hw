require 'httparty'
require './github_api'

class Repo < GithubApi
  attr_reader :repos

  def repos
    @repos ||=  HTTParty.get("#{BASE_URI}/users/#{username}/repos", :headers => {"Authorization" => "token #{ENV["GITHUB_TOKEN"]}", "User-Agent" => "arowan11"})
  end

  def repo_names
    # binding.pry
    repos.map { |hash| hash["name"] }
  end

end
