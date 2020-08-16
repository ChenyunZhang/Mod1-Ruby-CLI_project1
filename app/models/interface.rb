
class Interface

    attr_accessor :prompt, :user

    def initialize
        @prompt = TTY::Prompt.new(active_color: :yellow)
    end


    def welcome
        puts "Hello, welcome to Movie Mate!".colorize(:blue)
    end

    def login_register_delete_account
        prompt.select("Please select from the following options.") do |menu|
            menu.choice "🎬Login", -> {User.login} 
            menu.choice "🎬Register", -> {User.create_new_user}
            menu.choice "🎬Delete_my_account", -> {User.delete_my_account}
        end
    end

    def self.home_page         
        puts "Welcome to the app, #{user.name}"          
        prompt.select("Welcome to the Homepage") do |menu|         
            menu.choice "🍿My Movies", -> {puts "a"}                
            menu.choice "🍿Review a movie", -> {puts "a"}          
            menu.choice "🍿View reviews for a movie", -> {puts "a"}    
            menu.choice "🍿View my comments for a review", -> {puts "a"}                
            menu.choice "🍿Browse in theater movies", -> {puts "a"}                
            menu.choice "🍿My profile", -> {puts "a"}               
            menu.choice "🍿Logout", -> {puts "a"}   
         end
    end

end