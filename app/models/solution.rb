class Solution < ApplicationRecord

  belongs_to :game 
  has_many :tiles

end
