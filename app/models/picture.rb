class Picture < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :picture_votes
end
