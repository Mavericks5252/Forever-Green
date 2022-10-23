require "application_system_test_case"

class AboutUsTest < ApplicationSystemTestCase
  setup do
    @about_u = about_us(:one)
  end

  test "visiting the index" do
    visit about_us_url
    assert_selector "h1", text: "About Us"
  end

  test "creating a About u" do
    visit about_us_url
    click_on "New About U"

    fill_in "Context", with: @about_u.context
    fill_in "Name", with: @about_u.name
    fill_in "Title", with: @about_u.title
    click_on "Create About u"

    assert_text "About u was successfully created"
    click_on "Back"
  end

  test "updating a About u" do
    visit about_us_url
    click_on "Edit", match: :first

    fill_in "Context", with: @about_u.context
    fill_in "Name", with: @about_u.name
    fill_in "Title", with: @about_u.title
    click_on "Update About u"

    assert_text "About u was successfully updated"
    click_on "Back"
  end

  test "destroying a About u" do
    visit about_us_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "About u was successfully destroyed"
  end
end
