require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "should filter without categories" do
    events = Event.filter_by_categories
    assert_equal 3, events.count
  end

  test "should filter with categories" do
    event_category_ids = []
    event_category_ids << event_categories(:football).id
    event_category_ids << event_categories(:golf).id
    events = Event.filter_by_categories(event_category_ids)
    assert_equal 2, events.count
  end

  test 'should validate empty teams' do
    event = events(:presentation_event)
    assert event.valid?
  end

  test 'should have invalid teams' do
    event = events(:presentation_event)
    event.teams = 'Brazil'
    assert event.invalid?
  end

  test 'should be invalid  with invalid starts sentence' do
    event = events(:presentation_event)
    event.teams = '|| Brazil'
    assert event.invalid?
  end

  test 'should be invalid with invalid ends sentence' do
    event = events(:presentation_event)
    event.teams = 'Brazil ||'
    assert event.invalid?
  end

  test 'should be invalid with trying bug sentence' do
    event = events(:presentation_event)
    event.teams = ' || '
    assert event.invalid?
  end

  test 'should have just 2 teams' do
    event = events(:presentation_event)
    event.teams = 'Brazil || Argentina || Paraguai'
    assert event.invalid?
  end
end
