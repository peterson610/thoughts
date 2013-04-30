class Spinach::Features::ShowPostsInLandingPage < Spinach::FeatureSteps
  step '3 posts exist' do
    Fabricate(:post)
    Fabricate(:post)
    Fabricate(:post)
  end

  step 'I visit the home page' do
    visit '/'
  end

  step 'I should see them all' do
    page.should have_css("#post-1")
    page.should have_css("#post-2")
    page.should have_css("#post-3")
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
    page.should have_css("#post-3")
    page.should have_css("#post-4")
    page.should have_css("#post-5")
    page.should have_css("#post-6")

    page.should_not have_css("#post-1")
    page.should_not have_css("#post-2")
  end
end
