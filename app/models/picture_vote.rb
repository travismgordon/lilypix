# == Schema Information
#
# Table name: picture_votes
#
#  id         :integer          not null, primary key
#  direction  :integer
#  user       :string
#  picture_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PictureVote < ActiveRecord::Base
  belongs_to :picture

  	after_create :check_parent_temp

	def check_parent_temp
		if self.picture.picture_votes.sum(:direction) >= 25
			self.picture.hot = true
		else
			self.picture.hot = false
		end
		self.picture.save
	end
end
