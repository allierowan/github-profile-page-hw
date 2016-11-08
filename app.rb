require "sinatra"
require "erb"
require "pry"
require './repo'

helpers do
  def render_template(filename)
    template = File.read(filename)
    ERB.new(template).result(binding)
  end
end

get "/" do
  render_template("public/index.html.erb")
end

post "/repos/for" do
  @repos = Repo.new(params["username"])
  render_template("public/user_page.html.erb")
end
