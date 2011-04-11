class Creation < ActiveRecord::Base
  belongs_to :stylist
  has_many :votes
end
