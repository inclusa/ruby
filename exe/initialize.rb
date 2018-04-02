class Video
  attr_accessor :minutes, :title

  def initialize(title)
    self.title = title
    puts "Soy initialize"
  end

  def play
  end

  def pause
  end

  def stop
  end

end


video_30_curso_ruby = Video.new("Objetos y clases")

puts video_30_curso_ruby.title

