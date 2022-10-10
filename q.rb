# http_server.rb
require 'socket'
server = TCPServer.new 5678
base = ""
while session = server.accept
  request = session.gets
  puts request
  if request != "a\n"
    base = request
  end
  session.print(base)


  session.close
end