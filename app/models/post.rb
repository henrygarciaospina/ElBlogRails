# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  content     :text
#  status      :boolean
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  category_id :integer
#

class Post < ApplicationRecord
	belongs_to :user 
	has_many :comments
	belongs_to :category 

	scope :published, -> {where status:true}

end
