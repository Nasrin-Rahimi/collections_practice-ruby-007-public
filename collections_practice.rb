def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort {|a, b| b <=> a}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.collect do |element|
    element[2] = '$'
    element
  end
end

def greater_and_less_than_10(array)

  hash = {
    "greater_than_10" => [],
    "less_than_10" => []
  }

  array.each do |num|
    if num > 10
      hash["greater_than_10"] << num
    elsif num < 10
      hash["less_than_10"] << num
    end
  end

  hash

end 

def find_winners(hash)
  winners = []
  hash.select do |name, status|
    winners << name if status == "winner"
  end
  winners
end

def find_a(array)
  array.select do |element|
    element[0] == 'a'
  end
end

def sum_array(array)
  sum = 0
  array.each { |num| sum += num }
  sum
end

def add_s(array)
  array.collect.with_index do |element, index|
    if index != 1
      element + 's'
    else
      element
    end
  end
end

def count_words(story)
 story_count = {}

 story.split.each do |word|
  if story_count.include?(word)
    story_count[word] += 1
  else
    story_count[word] = 1
  end
 end

 story_count

end

def organize_songs_by_artist(tracks)
  hash = {}
  tracks.each do |track|
    artist = track.split(" - ")[0]
    track_name =  track.split(" - ")[1]
    if hash.include?(artist)
      hash[artist] << track_name
    else
      hash[artist] = [] << track_name
    end
  end
  hash
end



# def organize_songs_by_artist (tracks)
#   hash = {}
#   tracks.each do |name|
#     artist = name.split(" - ")[0]
#     trackname = name.split(" - ")[1]

#     if hash.include?(artist)
#       hash[artist] << trackname
#     else
#       hash[artist] = [] << trackname
#     end
#   end
#   hash
# end 