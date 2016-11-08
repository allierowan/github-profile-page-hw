class GithubApi
  BASE_URI = "https://api.github.com"
  
  attr_reader :username

  def initialize(username)
    @username = username
  end
end
