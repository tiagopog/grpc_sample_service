# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: requester.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "requester.Config" do
    optional :data, :string, 1
  end
  add_message "requester.Response" do
    optional :message, :string, 1
  end
end

module Requester
  Config = Google::Protobuf::DescriptorPool.generated_pool.lookup("requester.Config").msgclass
  Response = Google::Protobuf::DescriptorPool.generated_pool.lookup("requester.Response").msgclass
end
