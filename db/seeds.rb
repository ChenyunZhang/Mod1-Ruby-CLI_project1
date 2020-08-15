

User.destroy_all
Movie.destroy_all
Review.destroy_all
User.reset_pk_sequence
Movie.reset_pk_sequence
Review.reset_pk_sequence

########### different ways to write your seeds ############




# 3. Use Faker and mass create
## step 1: write a method that creates a person
def create_user
    user = User.create(
        name: Faker::Games::Pokemon.name, 
        age: rand(10...70)
    )
end



def create_movie
    movie = Movie.create(
        title: Faker::Book.title,
        genre: Faker::Book.genre,
        # release_date: rand(1980...2020),
        in_theaters: [true, false].sample
    )
end



## step 2: write a method that creates a joiner
def create_joiners(user)
    moives = rand(1..4)
    moives.times do 
        Review.create(
            movie_id: Movie.all.sample.id, 
            user_id: user.id, 
            rating: rand(1..10), 
            review: Faker::Movie.quote 
        )
    end
end



# step 3: invoke creating joiners by passing in an instance of a person
5.times do     
    create_user()
    create_movie()
    create_joiners(create_user)
    ##### ALTERNATIVE:
    # person = create_person
    # create_joiners(person)
end

# indoor = Category.create(name: "indoors")
# Plant.update(category_id: indoor.id)


puts "🔥 🔥 🔥 🔥 "