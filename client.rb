#!/usr/bin/env ruby

this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require "grpc"
require "requester_services_pb"

def main
  stub = Requester::Requester::Stub.new("localhost:50051", :this_channel_is_insecure)
  msg = stub.process(Requester::Config.new(data: "Tiago")).message
  p "Greeting: #{msg}"
end

main
