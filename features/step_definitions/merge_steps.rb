Given /^the following articles exist$/ do |table|
  # table is a Cucumber::Ast::Table
  Article.create table.hashes
end

Then /^the article "(.*?)" should have body "(.*?)"$/ do |title, body|
  Article.find_by_title(title).body.should eq body
end

Given /^I fill in "(.*?)" with id of "(.*?)"$/ do |field, title|
  fill_in(field, :with => Article.find_by_title(title).id)
end

Given /^I comment "(.*?)" in article "(.*?)"$/ do |body, article_title|
  comment = Comment.new body: body
  comment.author = User.first
  article = Article.find_by_title(article_title)
  article.comments << comment
  article.save.should == true
end

Then /^the article "(.*?)" should have comments "(.*?)", "(.*?)"$/ do |title, c1, c2|
  article = Article.find_by_title(title)
  p article.comments
  article.comments[0].body.should == c1
  article.comments[1].body.should == c2
end