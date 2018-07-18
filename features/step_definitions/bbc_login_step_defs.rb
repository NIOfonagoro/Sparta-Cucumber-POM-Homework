Given("I access the BBC login page") do
  # visit("http://www.bbc.co.uk")
  @bbc_site = BBC_Site.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.click_sign_in_link
end

Given("I input incorrect username") do
  @bbc_site.bbc_login.username_with_special_character
end


Given("I input incorrect password details") do
  @bbc_site.bbc_login.incorrect_password
end

When("I try to Login") do
  @bbc_site.bbc_login.click_submit
end

Then("I receive and error") do
  expect(@bbc_site.bbc_login.username_error).to be true
end


Given("I input correct username or email") do
  @bbc_site.bbc_login.fill_email
end

Given("I input incorrect but valid password details") do
  @bbc_site.bbc_login.incorrect_password
end

Then("I receive an error") do
  expect(@bbc_site.bbc_login.password_error_text).to eql "That's not the right password for that account. Reset your password here."
end
