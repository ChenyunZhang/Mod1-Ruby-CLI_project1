
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
        end
    end

    def home_page         
        #current user is the current instance user      
        prompt.select("Welcome to the Homepage, #{user.name}!" ) do |menu|         
            menu.choice "🍿All My Reviewed Movies", -> {user.all_my_review_movies}                
            menu.choice "🍿Review a movie", -> {user.write_a_movie_review}          
            menu.choice "🍿View reviews for a movie", -> {puts "a"}                  
            menu.choice "🍿Browse in theater movies", -> {puts "a"}                
            menu.choice "🍿My profile", -> {puts "a"}      
            menu.choice "🍿Delete_my_account", -> {user.delete_my_account}          
            menu.choice "🍿Logout", -> {puts "a"}   
         end
    end

end