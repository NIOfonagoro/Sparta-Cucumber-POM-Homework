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

  def enter_birthdate

    sleep 1
    fill_in('Day', with: '19')
    sleep 1
    fill_in('Month', with: '4')
    sleep 1
    fill_in('Year', with: '1994')


    click_button "Continue"
    sleep 2
  end

  def enter_email

    sleep 1
    fill_in('email', with: 'nick.harry@lala.com')
    sleep 1
    fill_in('password', with: 'capybara-platypus')
    sleep 1
    fill_in('postcode', with: 'SW16 7JK')
    sleep 1
    select "Other", from: "Gender"
    click_button "What's in these?"
    sleep 2

    click_button "What's in these?"
    #
    # click_button ("No, Thanks")

    all(".button__text-wrapper").each do |button|
      if button.text == "No, thanks"
        button.click
      end
    end

    sleep 2
  end

end
