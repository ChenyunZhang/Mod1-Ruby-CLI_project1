## Process

### NOTE
- this setup contains a rakefile with helpful process reminders

### Setup
1. Create Gemfile + run `bundle`
2. Create migrations: run `rake db:create_migration` and add the syntax you need (e.g. `NAME=create_users`)
3. Migrate: run `rake db:migrate`
* **REMEMBER** never ever ever change anything in schema.
4. Go to `.bin/run.rb` and change the name of the app on line 3 AND/OR go to `Rakefile` and change the name of the app on line 15
5. Go to `./app/models` and change the names of the files (e.g. `User.rb` <- singular) and the class names inside
6. Set up association macros in classes (`belongs_to` / `has_many` / `has_many, through:`)
7. Create seed file in `db/seed.rb` + then run `rake db:seed`
* remember: seeding does not give you any output so no news on your console == good news
8. Check if you've seeded correctly: run `rake c` and check what's the last instance of any of your class 
9. Go to `./app/yourAppName.rb` and change that file's name and whatever is inside (the class name should correspond to what you wrote in `.bin/run.rb` on line 3)

### Coding
1. Create a dummy version of your logic -> hardcode it and don't yet make your code save anything to the database, just make sure that the logic works
2. Test often by running the file or by `binding.pry`
3. What I fould useful is drowing out every step I want to guide users through before coding - my whiteboard looked like this:
![](Sunday.jpg)
4. Then I coded the dummy version (without saving to the database, just to see if all "if"s are working and all that jazz)
5. Then I added the database manipulations.
6. Then I beautified the code and the app to make it visually pleasing

## APIs

- [Dad Jokes API Docs](https://icanhazdadjoke.com/api)
- [Sample API Request](https://icanhazdadjoke.com/api#fetch-a-random-dad-joke)

- **[More APIs]**(https://rapidapi.com/collection/cool-apis)
- [And even more APIs](https://medium.com/@vicbergquist/18-fun-apis-for-your-next-project-8008841c7be9)

## Fun Gems For Your Projects
- `faker` - randomly generated seed data fun
- `colorize` - colored text output in your terminal
- `lolcat` - enabling rainbow text coloring
- `rest-client` - make HTTP requests and get data from APIs
- `tty-prompt` - nice interface for prompting for user input
- `formatador` - styling output information into a neat table
- `artii` - creating text banners

## Tutorials
- [Adding animations to your CLI by Sylwia Vargas](https://medium.com/better-programming/add-an-animation-or-a-giph-to-your-ruby-cli-29952e8c46ea)
- [Adding ASCII Art to your CLI by Sylwia Vargas](https://medium.com/@sylwiavargas/adding-pictures-to-your-ruby-cli-4252b89823a)
- [Using Time/Date in your CLI by Joel Mendoza](https://medium.com/@joelmendza173/ruby-date-time-for-dummies-9f45518bab64)



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