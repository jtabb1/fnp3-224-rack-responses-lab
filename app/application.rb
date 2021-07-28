class Application
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, conditional_response ]
  end

  def conditional_response
    Time.now.hour < 12 ?  ["Good Morning!"] : ["Good Afternoon!"]
  end
end
