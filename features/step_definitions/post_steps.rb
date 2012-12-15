Given /^current user is signed in$/ do  
	@user = User.new 
end

Given /^is on the post creation page$/ do
    visit new_post_path 
end

When /^the user publishes a post$/ do
    @post = Post.create(title: "TODO", author: "user@example.com", date_published: "12/15/12", content:"making a test")
    click_button "Create Post"
end

Then /^the user is shown the new post$/ do
	visit post_path(@post.id)
	page.should have_content "user@example.com"   
end
