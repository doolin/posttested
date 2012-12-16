class Post < ActiveRecord::Base
  attr_accessible :author, :content, :date_published, :title
	validates :author, :presence => true 
	validates :content, :presence => true
	validates :date_published, :presence => true
	validates :title, :presence => true
end

