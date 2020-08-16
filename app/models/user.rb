class User < ActiveRecord::Base
  # add associatons!
  has_many :reviews
  has_many :movies, through: :reviews

  def self.create_new_user
    prompt = TTY::Prompt.new(active_color: :yellow)
    user_input_name = prompt.ask("What is your username:")
    password = prompt.mask("What is your password:")
    User.craete(name: user_input_name)
  end

  def self.login
    prompt = TTY::Prompt.new(active_color: :yellow)
    user_input_name = prompt.ask("User name:")
    password = prompt.mask("Password:")
    found_user = User.find_by(name: user_input_name)
  end

  def self.delete_my_account
    prompt = TTY::Prompt.new(active_color: :yellow)
    answer = prompt.yes?("Are you sure you are leaving me💔?")
  end

  def self.find_by(name)
    self.all.where(name: name)
  end

end
