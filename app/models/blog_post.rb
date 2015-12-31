class BlogPost < ActiveRecord::Base

	default_scope { order('created_at DESC') }

	paginates_per 2

	has_many :comments
	belongs_to :user

	validates :title, :blog_entry, presence: true
	
end
