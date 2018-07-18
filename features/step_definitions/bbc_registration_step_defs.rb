
Given("I access the BBC register page") do
  @bbc_site = BBC_Site.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.click_sign_in_link
  @bbc_site.bbc_homepage.click_go_to_register
end

When("I confirm that I am under thirteen") do
  @bbc_site.bbc_registration.click_under_13
end


Then("I should be directed to the registration page that requires an adult") do
  expect(@bbc_site.bbc_registration.heading_text).to eql "OK, ask a grown-up to do this bit with you"
end

Given("have confirmed that I am under thirteen") do
  @bbc_site.bbc_registration.click_under_13
end

When("I leave the Parent or Guardian email section blank") do
  @bbc_site.bbc_registration.click_guardian_email
  @bbc_site.bbc_login.click_neutral_area
end


Then("I receive an error once clicking elsewhere on the page or clicking submit") do
  expect(@bbc_site.bbc_registration.guardian_email_empty).to eql "Something's missing. Please check and try again."

  @bbc_site.bbc_registration.click_send_email

  expect(@bbc_site.bbc_registration.guardian_email_empty).to eql "Something's missing. Please check and try again."
end
