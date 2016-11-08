require "sinatra"
require "erb"
require "pry"

helpers do
  def render_template(filename)
    template = File.read(filename)
    ERB.new(template).result(binding)
  end
end

get "/" do
  render_template("public/index.html.erb")
end
