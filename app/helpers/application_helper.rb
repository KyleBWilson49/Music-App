module ApplicationHelper
  def ugly_lyrics(lyrics)
    display = ""
    lyrics = lyrics.split(/\r?\n/)

    lyrics.each do |line|
      display += "<p>♫ #{h(line)}</p>" 
    end
    display.html_safe
  end
end
