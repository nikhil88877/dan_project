require 'test_helper'

class WhiskeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @whiskey = whiskeys(:one)
  end

  test 'Title cannot repeat' do
    w = Whiskey.new(@whiskey.attributes)
    assert_raise{w.save!}
  end

  test 'taste/color/description has to be between 1 to 5' do
    w = Whiskey.new(title: 'W1', description: 'D1', taste: 6, color: 7, smokiness: 10)
    w.save
    assert_equal 3, w.errors.count
  end

  test 'creates valid whiskey' do
    w = Whiskey.new(title: 'W1', description: 'D1', taste: 1, color: 1, smokiness: 1)
    w.save!
    assert_equal 0, w.errors.count
    assert_not_nil w.id
  end

  test 'search method' do
    # should return all the whiskeys present
    count = Whiskey.search({taste: 1, color: 1}).count
    assert_equal Whiskey.count, count

    # searching for specific title should return 1 search result
    count = Whiskey.search({taste: 1, color: 1, title: @whiskey.title}).count
    assert_equal 1, count

    count = Whiskey.search({taste: @whiskey.taste+1, color: 1, title: @whiskey.title}).count
    assert_equal 0, count
  end
end
