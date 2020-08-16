
class Interface

    attr_accessor :prompt, :user

    def initialize
        @prompt = TTY::Prompt.new
    end


    def welcome
        puts "Welcome to the Movie Mate".colorize(:red)
    end

    
    def welcome
        puts "Hello, welcome to Movie Mate!🎬".colorize(:green)
    end

    def choose_login_or_register
        answer = prompt.select("what would you like to do?".colorize(:blue), %w(😉Register 🤓Login 😠Delete_My_Acoount))
    end




end