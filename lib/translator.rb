# require modules here
require "yaml"
def load_library(file_path)
  get_english = {}
  get_japanese = {}
  get_emoticon = {}
  new_hash = {}
  library = YAML.load_file(file_path)
  library.each do |keys, arrays|
    # arrays.each do |emojis| 
      new_hash[keys] =  { :english => arrays[0],
      :japanese => arrays[1]}
     # get_english[keys.to_sym] = arrays[0]
     # get_japanese[keys.to_sym] = arrays[1]
     # get_emoticon[emojis] = emojis
      
    
  end 
      # new_hash["get_english"] = get_english 
      # new_hash["get_japanese"] = get_japanese
      # new_hash["get_emoticon"] = get_emoticon
      new_hash
end

def get_japanese_emoticon
  
end

def get_english_meaning(file_path, 
  japanese_emoticon)
  library = load_library(file_path)
  if library.include?(japanese_emoticon)
    get_meaning = key
  
  end 
end
end 
end 

puts get_english_meaning("./lib/emoticons.yml", "☜(⌒▽⌒)☞")