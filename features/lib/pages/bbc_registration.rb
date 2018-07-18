require "capybara/dsl"

class BBC_Registration
  include Capybara::DSL
  # Constants
  CONFIRM_BIRTHDAY_LINK = "#submit-button"
  DUMMY_PASSWORD = "Passwork01"
  INPUT_POSTCODE = "postcode"
  REGISTRATION_SUBMIT = "#submit-button"


  def click_13_or_over
    sleep 1
    click_link("13 or over")
  end

  def click_under_13
    sleep 1
    click_link("Under 13")
  end

  def click_continue
    click_button("Continue")
    sleep 2
  end

  def heading_text
    find(".heading").text
  end

  def click_guardian_email
    find("#email-input").click
    sleep 1
  end

  def click_send_email
    click_button("Send email")
    sleep 1
  end

  def guardian_email_empty
    find("#form-message-email").text
  end

  def parent_email
    fill_in('Parent or guardian email', with: "no123@more.see")
  end

  def guardian_email_sent_page
    page.has_content?('Email sent. Now check your inbox and follow the instructions')
  end

  def wrong_birthdate
    fill_in('Day', with: '26')
    sleep 1
    fill_in('Month', with: '1')
    sleep 1
    fill_in('Year', with: '2008')
    sleep 1
  end

  def enter_birthdate
    sleep 1
    fill_in('Day', with: '19')
    sleep 1
    fill_in('Month', with: '4')
    sleep 1
    fill_in('Year', with: '1994')
  end

  def too_young
    page.has_content?('Sorry, you need to be 13 or over.')
  end


  def click_stuff
    click_button "What's in these?"
    sleep 2
    click_button "What's in these?"

    all(".button__text-wrapper").each do |button|
      if button.text == "No, thanks"
        button.click
      end
    end
    sleep 2
  end

end
