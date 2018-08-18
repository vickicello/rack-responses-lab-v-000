class Application

  def call(env)

    resp = Rack::Response.new

    time = Time.now

    if time >= 1200
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
