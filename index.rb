#webに接続するためのライブラリ
require "open-uri"
#クレイピングに使用するライブラリ
require "nokogiri"

#クレイピング対象のURL
url = "http://example.com/"
#取得するhtml用charset
charset = nil

html = open(url) do |page|
  #charsetを自動で読み込み、取得
  charset = page.charset
  #中身を読む
  page.read
end

# Nokogiri で切り分け
contents = Nokogiri::HTML.parse(html,nil,charset)
ul = contents.at_css('ul')

puts ul
