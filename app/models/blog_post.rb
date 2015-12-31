class BlogPost < ActiveRecord::Base

	paginates_per 2

	has_many :comments
	belongs_to :user

	validates :title, :blog_entry, presence: true
	
end
