class Review < ActiveRecord::Base
  # add associatons!
  belongs_to :movie
  belongs_to :user
end
