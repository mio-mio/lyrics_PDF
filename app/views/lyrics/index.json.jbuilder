json.array!(@lyrics) do |lyric|
  json.extract! lyric, :id, :title, :lyricist, :composer, :singer, :content
  json.url lyric_url(lyric, format: :json)
end
