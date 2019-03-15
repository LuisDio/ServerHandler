server {
     location /lua_content {
         # MIME type determined by default_type:
         default_type 'text/plain';

         content_by_lua_block {
             ngx.say('Hello,world!')
         }
     }

     location /nginx_var {
         # MIME type determined by default_type:
         default_type 'text/plain';

         # try access /nginx_var?a=hello,world
         content_by_lua_block {
             ngx.say(ngx.var.arg_a)
         }
     }
     
     #Hello, Lua!
     location /hellolua {
          default_type 'text/plain';

          content_by_lua '
          local name = ngx.var.arg_name or "Anonymous"
          ngx.say("Hello, ", name, "!")';
     }

#$> curl http://localhost/hellolua?name=Lua
#Hello, Lua!
     
}
