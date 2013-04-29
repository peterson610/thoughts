class Spinach::Features::ShowPostsInLandingPage < Spinach::FeatureSteps
  step '3 posts exist' do
    Fabricate(:post)
    Fabricate(:post)
    Fabricate(:post)
  end

  step 'I visit the home page' do
    binding.pry
    visit '/'
  end

  step 'I should see them all' do
    page.should have_css("#post_1")
    page.should have_css("#post_2")
    page.should have_css("#post_3")
  end

  step '6 posts exist' do
    Fabricate(:post)
    Fabricate(:post)
    Fabricate(:post)
    Fabricate(:post)
    Fabricate(:post)
    Fabricate(:post)
  end

  step 'I should see the last 4 posts' do
    page.should have_css("#post_3")
    page.should have_css("#post_4")
    page.should have_css("#post_5")
    page.should have_css("#post_6")

    page.should_not have_css("#post_1")
    page.should_not have_css("#post_2")
  end
end
