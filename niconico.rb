require 'nokogiri'
require 'open-uri'


URL = "http://www.nicovideo.jp"


charset = nil

html = open(URL) do |f|
  charset = f.charset
  f.read
end


doc =  Nokogiri::HTML.parse(html, nil, charset)

p doc.title
