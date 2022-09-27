def badge_maker speaker
  "Hello, my name is #{speaker}."
end

def batch_badge_creator list_of_speakers
  names_of_speakers = list_of_speakers.map{ |speaker| badge_maker speaker }
  names_of_speakers
end

def assign_rooms speakers
  assignment = []
  speakers.each_with_index do |name, index| 
    if index >= 8
      return
    else 
      assignment << "Hello, #{name}! You'll be assigned to room #{index + 1}!"     
    end
  end
  assignment
end

def printer speakers
  badges = batch_badge_creator speakers
  assignments = assign_rooms speakers
  badges.each do |badge|
    puts badge
  end
  assignments.each do |assignment|
    puts assignment
  end
end