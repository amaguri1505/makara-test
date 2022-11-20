class Dog < ApplicationRecord
  # self.abstract_class = true
  connects_to database: { writing: :primary_replica, reading: :primary_replica }
  has_many :commands
end
