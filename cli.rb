require 'pry'

def start
    input = nil
    people = []
    while input != 'exit' 
        puts "Hello, welcome to the People CLI!!!"
        puts "What would you like to do? add('a'), exit('exit'), print('p'), sort('s'), find('f'), count('c')"

        input = gets.chomp

        if input == "a"
            puts "Please enter a new name."
            name = gets.chomp 
            people << name.downcase
        elsif input == 'p'
            puts "here are the people"
            print_people(people)
        elsif input == 's'
            puts "here are the people sorted alphabetically"
            print_people(people.sort)
        elsif input == 'c'
            puts "there are #{people.length}"  
        elsif input == 'f'
            puts "Tell me who you're looking for"
            who = gets.chomp.downcase
            if people.include? who
                puts "That person is here."
            else
                puts "Nope. Not here."
            end
        elsif input == 'exit'
            puts 'Goodbye'
        else
            puts "Invalid choice"
        end
    end
end

def print_people(people)
    people.each.with_index(1) do |person, index|
        puts "#{index}. #{person.capitalize}"
    end
end

start

push, <<
sort
reverse
each