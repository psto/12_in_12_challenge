class Workout < ApplicationRecord
  has_many :exercises, dependent: :destroy
end
