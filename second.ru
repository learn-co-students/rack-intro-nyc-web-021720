require 'rack'
 
# Something that responds to call, that's what Rack demands
class MyServer
  def call(env)
    # calls the pretty_response method to render the content
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end
 
  def pretty_response
    # takes time now, turns it to an integer, and check if it even 
    (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
  end
end
 
run MyServer.new