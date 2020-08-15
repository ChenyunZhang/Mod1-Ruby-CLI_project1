class User < ActiveRecord::Base
  # add associatons!
  has_many :reviews
  has_many(:movies, {through: :reviews})
end
