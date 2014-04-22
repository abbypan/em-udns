# -*- encoding: utf-8 -*-

require "./lib/em-udns/version"

Gem::Specification.new do |spec|
  spec.name = "em-udns"
  spec.version = EventMachine::Udns::VERSION
  spec.date = Time.now
  spec.authors = ["Inaki Baz Castillo"]
  spec.email = "ibc@aliax.net"
  spec.summary = "Async DNS resolver for EventMachine based on udns C library"
  spec.homepage = "https://github.com/ibc/em-udns"
  spec.description =
    "em-udns is an async DNS resolver for EventMachine based on udns C library. Having most of the core written in C, em-udns becomes very fast. It can resolve DNS A, AAAA, PTR, MX, TXT, SRV and NAPTR records, and can handle every kind of errors (domain/record not found, request timeout, malformed response...)."
  spec.extensions = ["ext/extconf.rb"]
  spec.required_ruby_version = ">= 1.8.7"
  spec.files = %w{
    lib/em-udns.rb
    lib/em-udns/version.rb
    lib/em-udns/resolver.rb
    lib/em-udns/query.rb
    ext/em-udns.c
    ext/em-udns.h
    ext/extconf.rb
    ext/udns-0.4-patched.tar.gz
    test/test-em-udns.rb
  }
  spec.require_paths = ["lib"]
end
