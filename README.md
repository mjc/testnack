This is set up to work with chruby.

To use, run test.sh with the ruby version you want to test, and then try ```curl http://localhost:3000```

examples:
```./test.sh ruby-2.1.1```
```./test.sh jruby-head```

with MRI and RBX this works fine, with jruby it fails with this:

```
org/jruby/ext/socket/RubyBasicSocket.java:426:in `close_read'
/usr/local/lib/node_modules/nack/lib/nack/server.rb:142:in `handle'
/usr/local/lib/node_modules/nack/lib/nack/server.rb:109:in `start'
org/jruby/RubyArray.java:1549:in `each'
/usr/local/lib/node_modules/nack/lib/nack/server.rb:96:in `start'
org/jruby/RubyKernel.java:1220:in `loop'
/usr/local/lib/node_modules/nack/lib/nack/server.rb:76:in `start'
/usr/local/lib/node_modules/nack/lib/nack/server.rb:12:in `run'
/usr/local/lib/node_modules/nack/bin/nack_worker:4:in `(root)'
127.0.0.1 - - [Wed, 19 Mar 2014 16:51:00 GMT] "GET / HTTP/1.1" 500 - "-" "curl/7.30.0"
```
