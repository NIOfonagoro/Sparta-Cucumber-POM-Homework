require "capybara/dsl"

class BBC_Login
  include Capybara::DSL

  # Constants
  USERNAME = "username"
  DUMMY_EMAIL = "nick.drastikk@gmail.com"
  PASSWORD_INPUT = "password"
  DUMMY_PASSWORD = "budokai3"

  def fill_email
    fill_in USERNAME, with: DUMMY_EMAIL
  end

  def fill_password
    fill_in PASSWORD_INPUT, with: DUMMY_PASSWORD
  end

  def click_submit
    click_button "Sign in"
    sleep 1
  end

  def click_username
    find("#user-identifier-input").click
    sleep 1
  end

  def click_neutral_area
    find(".page__grid-wrapper").click
    sleep 3
  end

  def click_password
    find(".field__input--password-toggle").click
    sleep 1
  end

  def username_error
    # find(:css, "#form-message-username").should be_visible
    # expect(page).to have_selector('#form-message-username', visible: true)
    page.has_selector?("#form-message-username")
  end

  def username_error_text
    find("#form-message-username").text
  end

  def password_error
    # find(:css, "#form-message-username").should be_visible
    # expect(page).to have_selector('#form-message-username', visible: true)
    page.has_selector?("#form-message-password")
  end

  def password_error_text
    find("#form-message-password").text
  end

  def username_with_special_character
    fill_in USERNAME, with: "nick.ikenna"
  end

  def short_password
    fill_in PASSWORD_INPUT, with: "nick1"
  end

  def incorrect_password
    fill_in PASSWORD_INPUT, with: "Academy1"
  end

end
