require "application_system_test_case"

class InfluencersTest < ApplicationSystemTestCase
  setup do
    @influencer = influencers(:one)
  end

  test "visiting the index" do
    visit influencers_url
    assert_selector "h1", text: "Influencers"
  end

  test "creating a Influencer" do
    visit influencers_url
    click_on "New Influencer"

    fill_in "Engagement", with: @influencer.engagement
    fill_in "Followers", with: @influencer.followers
    fill_in "Name", with: @influencer.name
    fill_in "Social Media", with: @influencer.social_media
    click_on "Create Influencer"

    assert_text "Influencer was successfully created"
    click_on "Back"
  end

  test "updating a Influencer" do
    visit influencers_url
    click_on "Edit", match: :first

    fill_in "Engagement", with: @influencer.engagement
    fill_in "Followers", with: @influencer.followers
    fill_in "Name", with: @influencer.name
    fill_in "Social Media", with: @influencer.social_media
    click_on "Update Influencer"

    assert_text "Influencer was successfully updated"
    click_on "Back"
  end

  test "destroying a Influencer" do
    visit influencers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Influencer was successfully destroyed"
  end
end
