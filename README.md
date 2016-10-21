# grpc_sample_service

It's just a simple implementation of client-server service using the awesome gRPC framework for *remote procedure calls*.

One of the main motivations for testing the framework is the beauty and high performance of [Google's Protocol Buffers](https://developers.google.com/protocol-buffers/docs/proto3) for creating language-agnostic interfaces bewteeen server and clients.

The code present here was guided by:

- http://www.integralist.co.uk/posts/grpc.html
- http://www.grpc.io/docs/quickstart/ruby.html


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
