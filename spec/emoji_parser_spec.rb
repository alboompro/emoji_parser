require "spec_helper"

test_helper = [
	[
    '# 😀 grinning face',
    '# &#x1F600; grinning face'
	],
	[
    '# 😁 grinning face with smiling eyes',
    '# &#x1F601; grinning face with smiling eyes'
	],
	[
    '# 😂 face with tears of joy',
    '# &#x1F602; face with tears of joy'
	],
	[
    '# 🤣 rolling on the floor laughing',
    '# &#x1F923; rolling on the floor laughing'
	],
	[
    '# 😃 smiling face with open mouth',
    '# &#x1F603; smiling face with open mouth'
	],
	[
    '# 😄 smiling face with open mouth & smiling eyes',
    '# &#x1F604; smiling face with open mouth & smiling eyes'
	],
	[
    '# 😅 smiling face with open mouth & cold sweat',
    '# &#x1F605; smiling face with open mouth & cold sweat'
	],
	[
    '# 😆 smiling face with open mouth & closed eyes',
    '# &#x1F606; smiling face with open mouth & closed eyes'
	],
	[
    '# 😉 winking face',
    '# &#x1F609; winking face'
	],
	[
    '# 😊 smiling face with smiling eyes',
    '# &#x1F60A; smiling face with smiling eyes'
	],
	[
    '# 😋 face savouring delicious food',
    '# &#x1F60B; face savouring delicious food'
	],
	[
    '# 😎 smiling face with sunglasses',
    '# &#x1F60E; smiling face with sunglasses'
	],
	[
    '# 😍 smiling face with heart-eyes',
    '# &#x1F60D; smiling face with heart-eyes'
	],
	[
    '# 😘 face blowing a kiss',
    '# &#x1F618; face blowing a kiss'
	],
	[
    '# 😗 kissing face',
    '# &#x1F617; kissing face'
	],
	[
    '# 😙 kissing face with smiling eyes',
    '# &#x1F619; kissing face with smiling eyes'
	],
	[
    '# 😚 kissing face with closed eyes',
    '# &#x1F61A; kissing face with closed eyes'
	],
	[
    '# ☺️ smiling face',
    '# &#x263A;&#xFE0F; smiling face'
	],
	[
    '# ☺ smiling face',
    '# &#x263A; smiling face'
	],
	[
    '# 🙂 slightly smiling face',
    '# &#x1F642; slightly smiling face'
	],
	[
    '# 🤗 hugging face',
    '# &#x1F917; hugging face'
	],
]

RSpec.describe EmojiParser do
  it "has a version number" do
    expect(EmojiParser::VERSION).not_to be nil
  end

  it "shold be able to encode string with emoji to html entite code" do
  	test_helper.each do |line|
  		expect(EmojiParser.encode line[0]).to eq line[1]
  	end
  end

  it "shold be able to decode string with html entite code into emoji unicode" do
  	test_helper.each do |line|
  		expect(EmojiParser.encode line[1]).to eq line[0]
  	end
  end
end
