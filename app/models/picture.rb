# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  title      :string
#  caption    :string
#  url        :string
#  vote       :integer
#  hot        :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Picture < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :picture_votes
end
