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



