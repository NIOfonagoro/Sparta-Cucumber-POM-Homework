require "capybara/dsl"

class BBC_Homepage
  include Capybara::DSL

  # Constants
  HOMEPAGE_URL = "http://www.bbc.co.uk"
  SIGN_IN_LINK_ID = "#idcta-username"
  REGISTER_LINK_CLASSNAME = ".link--primary"


  def visit_homepage
    visit(HOMEPAGE_URL)

  end

  def click_sign_in_link
    find(SIGN_IN_LINK_ID).click

  end

  def click_go_to_register
    find(REGISTER_LINK_CLASSNAME).click

  end

end
