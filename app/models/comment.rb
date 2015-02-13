# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  name       :string
#  words      :string
#  vote       :integer
#  picture_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :picture
  validates_presence_of :name, message: "....uhhh, what was your name again?!"
  validates_presence_of :words, message: "are missing!"
end
