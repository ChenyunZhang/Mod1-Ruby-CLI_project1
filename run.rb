# def self.login
#     prompt = TTY::Prompt.new(active_color: :yellow)
#     user_input_name = prompt.ask("User name:")
#     found_user = User.all.find_by(name: user_input_name)
#     until found_user
#       puts "Username not found, try again"
#       user_input_name = prompt.ask("User name:")
#       found_user = User.all.find_by(name: user_input_name)
#       counter = 5
#       counter -=1 
#       puts counter
#     end
#     password = prompt.mask("Password:")
#     #returning a user instance
#     found_user
#     binding.pry
#   end
counter = 5
  until counter < 1
    # puts "Username not found, try again"
    # user_input_name = prompt.ask("User name:")
    # found_user = User.all.find_by(name: user_input_name)
    
    counter -=1 
    puts counter
  end