require 'spec_helper'

describe Post do 
	
	before(:each) do
		@attr = {
			 author: "Jo",
			  title: "new post", 
			content: "how to make a rspec",
	 date_published: "12/15/12"
		}
	end

	it "creates a new post" do
		post = Post.create @attr
		post.should be_valid
	end
	
	it "fails without all required attr" do
		post = Post.create(
			  title: "new post", 
			content: "how to make a rspec",
	 date_published: "12/15/12")
		post.should_not be_valid
	end
end

