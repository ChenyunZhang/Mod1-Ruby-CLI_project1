class Movie < ActiveRecord::Base
# add associatons!
has_many :review
has_many(:user, {through: :review})
end
