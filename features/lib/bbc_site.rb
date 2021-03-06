require "capybara/dsl"
require_relative "./pages/bbc_homepage.rb"
require_relative "./pages/bbc_registration.rb"
require_relative "./helpers/temporary_email.rb"
require_relative "./pages/bbc_login.rb"

class BBC_Site
  def bbc_homepage
    BBC_Homepage.new
  end

  def bbc_registration
    BBC_Registration.new
  end

  def bbc_login
    BBC_Login.new
  end

  def get_temp_email
    TempEmail.new
  end
end

# bbc = BBC_Site.new
# bbc_home= bbc.bbc_homepage
# bbc_home.visit_homepage
