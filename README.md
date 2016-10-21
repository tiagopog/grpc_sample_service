# gRPC Sample Service

It's just a simple implementation of client-server service using the awesome gRPC framework for *remote procedure calls*.

One of the main motivations for testing the framework is the beauty and high performance of [Google's Protocol Buffers](https://developers.google.com/protocol-buffers/docs/proto3) for creating language-agnostic interfaces bewteeen server and clients.

The code present here was guided by:

- http://www.integralist.co.uk/posts/grpc.html
- http://www.grpc.io/docs/quickstart/ruby.html

If you wish to test the compilation of the protobufs , although it isn't required to run the examples sinse the code is already generated at `/lib`, you should:

- [Do it via Docker](https://github.com/namely/docker-protoc)
- Or [install and compile](https://github.com/google/protobuf/blob/fd046f6263fb17383cafdbb25c361e3451c31105/jenkins/docker/Dockerfile#L132) the C libs onto your native OS.

## Installation

```
$ git clone https://github.com/tiagopog/grpc_sample_service.git
$ cd grpc_sample_service
$ bundle install
```

## Running things

**Server**

```ruby
ruby server.rb
```

**Client**

```ruby
ruby client.rb
```
