require "capybara/dsl"

class Demoqa_Homepage
  include Capybara::DSL

  # Constants
  HOMEPAGE_URL = "http://store.demoqa.com/"
  SIGN_IN_LINK_ID = "#idcta-username"
  REGISTER_LINK_CLASSNAME = ".link--primary"




end
