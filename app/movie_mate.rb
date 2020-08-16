class MovieMate
  # here will be your CLI!
  # it is not an AR class so you need to add attr


  def run
    Title.header
    login_page
  end



###############################################################
  private
###############################################################
  def login_page
    interface = Interface.new
    interface.welcome
    interface.prompt.yes?("Are you enjoying the app?")
    Loading.go
    interface.login_register_delete_account
    # interface.home_page

  end




  
end
