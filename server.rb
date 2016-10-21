#!/usr/bin/env ruby

this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require "byebug"
require "grpc"
require "requester_services_pb"

class RequesterServer < Requester::Requester::Service
  def process(config, _unused_call)
    response = Requester::Response.new(message: "Hello #{config.data}")
    puts "Received data: #{config.data}"
    response
  end
end

# main starts an RpcServer that receives requests to RequesterServer at the sample
# server port.
def main
  s = GRPC::RpcServer.new
  s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
  s.handle(RequesterServer)
  s.run_till_terminated
end

main
