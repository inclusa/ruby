class Object
  def i_have_superpowers
    puts "Este método está en TODOS los objectos"
  end
end

class Video
  attr_accessor :title
  attr_accessor :duration
  attr_accessor :facebook_id

  def embed_video_code
    "<video></video>"
  end

  def setup(title)
    @title = title
  end

end

class FacebookVideo < Video
  attr_accessor :facebook_id
end

class YouTubeVideo < Video
  attr_accessor :youtube_id

  def embed_video_code
    "<iframe />"
  end

  def setup(title)
    super
    # YouTubeAPI.ini()
    puts "Algo extra"
  end
end

puts 1.object_id

puts YouTubeVideo.new.object_id

[].i_have_superpowers
"".i_have_superpowers
10.i_have_superpowers
Video.new.i_have_superpowers
YouTubeVideo.i_have_superpowers

