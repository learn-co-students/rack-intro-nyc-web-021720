require 'rack'
 
# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ['<em>Hello</em>', ' Uriel here!']]
  # will render only one, the last one
  [200, { 'Content-Type' => 'text/html' }, ['<em>Rack</em>', ' is cool!']]
end

# when use 'run' command - must be doing my_server.call
run my_server