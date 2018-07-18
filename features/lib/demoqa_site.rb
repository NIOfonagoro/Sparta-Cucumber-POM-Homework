require "capybara/dsl"
require_relative "./pages/demoqa_homepage.rb"

class Demoqa_Site
  def demoqa_homepage
    Demoqa_Homepage.new
  end

end
