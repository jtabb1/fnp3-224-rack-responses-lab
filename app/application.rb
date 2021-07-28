class Application
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, conditional_response ]
  end

  def conditional_response
    Time.now.hour < 12 ?  ["Good Morning!"] : ["Good Afternoon!"]
  end
end

# The version given by the official solution may also work:

# class Application

#   def call(env)
#     resp = Rack::Response.new
#     now = Time.now
#     if now.hour >=12
#       resp.write "Good Afternoon"
#     else
#       resp.write "Good Morning"
#     end
#     resp.finish
#   end

# end
