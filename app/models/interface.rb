require 'tty-prompt'

class Interface

    attr_accessor :prompt

    def initialize
        @prompt = TTY::Prompt.new
    end

    def welcome
        puts "Welcome to the Movie Mate"
    end

    @prompt.yes?("Do you like Ruby?")


end