class Movie < ApplicationRecord
  serialize :casts
  serialize :directors
end
