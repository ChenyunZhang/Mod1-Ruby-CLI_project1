#Movie Mate

#Movie Mate is a CLI app that allows you to manage your movie reviews, and browser in theater movies.

#How to Install
1. Clone the repo onto your local machine.
2. Change the directory to the repo.
3. In you terminal, run 'bundle install'.
4. Run 'rake db:migrate'.
5. Run 'rake db:seed'.
6. Run 'ruby bin.run.rb' to open the app.

## Login / Register Menu
- Login with a existing account
- Register if you don't have an account

## Main Menu
1. My Movie Reviews 
	- Allow users to 
2. Review a movie
3. Update a movie
4. Browse movie reviews
5. Browse in theater movies
6. My profile
7. Delete my account
7. Logout















HEADER TITLE (TBD) idea: Movie Mate, My Movie, Movie Club, (add your idea here)


Login Page
	Register 
	Login
	Delete my account

Homepage
	My Movies
		1. View all my reviewed movies
				Modify my review 
				Add a review					
				Delete my review
				Back the to Homepage
		2. View my watched movies	
				Add a watched movie
				Delete a watched movie
				Back the to Homepage
		3. Want to watch
				Add a movie to my wish list 
				Delete a movie from my wish list
				Back the to Homepage
		4. Review a movie
				Pick a movie to review
				Back the to Homepage
	View reviews for a movie
		Pick a movie
		View the comments for this review.
		Comment the movie 
		Back the to Homepage
	View my comments for a review
		All my comments
		Delete my comment
		Back the to Homepage
		Browse in theater movies
	My Profile
		Update my username information
		Update my age information
		Back the to Homepage
	Exit/Logout 

###############################################
Movie ==== <  Review >==== User
				II
				^
			Comment
###############################################
Movies Table
Title: string
Genre: string
Release_date: datetime
In_theaters: boolean
###############################################
Reviews Table
User_id: integer
Movie_id: integer
Review: string
Rating: integer

###############################################
Users Table
Name: string
Age: integer
Occupation: string

#####################################
Comments Table
Id: integer
Name: string
Comment: string


##################################
API/Tools
################################
TTY::prompt
TTY::Table
gem colorize


Aug 15
-created seed file
-associated the 3 models
-created 3 tables
-updated column data type
-tonight plan - watch Eric's video, play with gem Prompt, CLI
-tomorrow plan - setup the login page and sub 1-2 options 

Aug 16
-finished login page
-finshed all my movies, review a movie feature, delete my account
-created helper method to go back to homepage
-recreated new seed data

Aug 17
-finished add a review
-finished update a review
-finished update my profile
-finished Browse in theater movies
-created helper methods
-[x] login page bug. fix the loop 
-[x] give better menu names for homepage
-[x] research dynamic login page
-[] finish README
- user stories
	- As a user, I want to be able to manage my movie reviews.
	- As a user, I want to be able to browser in theater movie, so I can decide which movie to watch.
	- As a user, I want to see the reviews for a movie that I'm interested in.
	- Aa a user, I want to be able to delete my account.

