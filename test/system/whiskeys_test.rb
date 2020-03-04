require 'application_system_test_case'

class WhiskeysTest < ApplicationSystemTestCase
  setup do
    @whiskey = whiskeys(:one)
  end

  test 'visiting the index' do
    visit whiskeys_url
    assert_selector 'h1', text: 'Whiskeys'
  end

  test 'creating a Whiskey' do
    visit whiskeys_url
    click_on 'New Whiskey'

    select @whiskey.color, from: 'Color'
    fill_in 'Description', with: @whiskey.description
    select @whiskey.smokiness, from: 'Smokiness'
    select @whiskey.taste, from: 'Taste'
    fill_in 'Title', with: "New Whiskey"
    click_on 'Create Whiskey'

    assert_text 'Whiskey was successfully created'
    click_on 'Back'
  end

  test 'updating a Whiskey' do
    visit whiskeys_url
    click_on 'Edit', match: :first

    select @whiskey.color, from: 'Color'
    fill_in 'Description', with: @whiskey.description
    select @whiskey.smokiness, from: 'Smokiness'
    select @whiskey.taste, from: 'Taste'
    click_on 'Update Whiskey'

    assert_text 'Whiskey was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Whiskey' do
    visit whiskeys_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Whiskey was successfully destroyed'
  end
end
