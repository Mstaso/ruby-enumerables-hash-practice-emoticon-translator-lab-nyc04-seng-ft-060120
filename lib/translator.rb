# require modules here
require 'yaml'
require 'pry'

def load_library(path)
 emoticons = YAML.load_file(path)
 emoticon_lib = {'get_meaning' => {}, 'get_emoticon' => {}}
 emoticon_hash["get_emoticon"] = Hash.new
 emoticon_hash["get_meaning"] = Hash.new
 
emoticons.each do |meaning, value|
    english = value[0]
    japanese = value[1]
    emoticon_lib['get_meaning'][japanese] = meaning
    emoticon_lib['get_emoticon'][english] = japanese
  end
  emoticon_lib
end



def get_japanese_emoticon(path, emoticon)
emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end


def get_english_meaning(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil 
    result = "Sorry, that emoticon was not found" 
  end
  result
end