class Post < ActiveRecord::Base
  attr_accessible :author, :content, :date_published, :title
end
