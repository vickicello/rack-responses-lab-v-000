class Application

  def call(env)

    resp = Rack::Response.new

    time = Time.now.to_s

    if time >= "12:00:00"
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
