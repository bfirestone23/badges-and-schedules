require 'pry' 

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names_array)
    badge_messages = []
    names_array.each do |name|
        badge_messages << "Hello, my name is #{name}."
    end
    badge_messages
end

def assign_rooms(names_array)
    names_array.collect do |name|
        "Hello, #{name}! You'll be assigned to room #{names_array.index(name) + 1}!"
    end
end

def printer(attendees)
    batch_badge_creator(attendees).each do |badge|
        puts badge
    end
    assign_rooms(attendees).each do |assignment|
        puts assignment
    end
end
