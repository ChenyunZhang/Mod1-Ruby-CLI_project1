class User < ActiveRecord::Base
  # add associatons!
  has_many :reviews
  has_many :movies, through: :reviews



  ####################################################################
  ######################  Login/Register page      ###################
  ####################################################################
  def self.create_new_user
    prompt = TTY::Prompt.new(active_color: :yellow)
    user_input_name = prompt.ask("What is your username:")
    found_user = User.all.find_by(name: user_input_name)
    until !found_user
      puts "Sorry, Username already taken. Try again"
      user_input_name = prompt.ask("What is your username:") 
      found_user = User.all.find_by(name: user_input_name)
    end
    password = prompt.mask("What is your password:")
    User.create(name: user_input_name, age: rand(25))
  end


  def self.login
    prompt = TTY::Prompt.new(active_color: :yellow)
    user_input_name = prompt.ask("User name:")
    found_user = User.all.find_by(name: user_input_name)
    until found_user
      puts "Username not found, try again"
      user_input_name = prompt.ask("User name:")
      found_user = User.all.find_by(name: user_input_name)
    end
    password = prompt.mask("Password:")
    found_user
  end

  #############################################################
  ##  An instance - user account features
  #############################################################
  def delete_my_account
    prompt = TTY::Prompt.new(active_color: :yellow)
    answer = prompt.select("Are you sure you are leaving me💔?") do |menu|
    menu.choice "Yes", -> {
      puts "Good Bye #{self.name}."
      self.destroy
      sleep (1)
      system 'clear'
      app = MovieMate.new
      app.run
    }
    menu.choice "No", -> {
      puts "Good, your not leaving."
      sleep (1)
      system 'clear'
      go_back_to_homepage
    }     
    end
  end

  def go_back_to_homepage
    interface = Interface.new
    #self is an instance of a user
    interface.user = self
    interface.home_page
  end


  def all_my_review_movies
    movie_array = self.movies.pluck(:title)
    movie_array.each_with_index do |title, ind|
      puts "#{ind + 1}. #{title}"
    end
    prompt = TTY::Prompt.new(active_color: :yellow)
    prompt.select("Go back", ["Yes", "Yes"])
    sleep (1)
    system 'clear'
    go_back_to_homepage
  end

  def write_a_movie_review
    prompt = TTY::Prompt.new(active_color: :yellow)
    movie_title = prompt.ask("Which movie are you going to review?:")
    review_statement = prompt.ask("Lets start your review:")
    rating_num = prompt.ask("Rate the movie from 1 - 10:")
    
    if current_movie_instance = self.movies.find_by(title: movie_title)
        current_review = self.reviews.find_by(user_id: self.id)
        current_review.review = review_statement
    else
      reviewed_movie = Movie.create(title: movie_title)
      review = Review.create(user: self, movie: reviewed_movie, review: review_statement, rating: rating_num )
    end
    puts "Congratulations!!⭐️ You just reviewed #{movie_title}."
    sleep (3)
    system 'clear'
    Loading.go
    go_back_to_homepage
  end

 
end
