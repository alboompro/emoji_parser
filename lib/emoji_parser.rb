require "emoji_parser/version"
require "emoji_parser/emojis"

module EmojiParser
  class << self
    def encode(line)
      EMOJIS.keys.each do |k|
        line.gsub!(k, EMOJIS[k]) if line.include? k
      end
      line
    end

    def decode(line)
      EMOJIS.keys.each do |k|
        value = EMOJIS[k]
        line.gsub!(value, k) if line.include? value
      end
      line
    end
  end
end
