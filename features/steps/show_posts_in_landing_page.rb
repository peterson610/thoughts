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

  step 'Posts from different kinds exist' do
    Fabricate(:post, kind: 'music')
    Fabricate(:post, kind: 'gaming')
    Fabricate(:post, kind: 'code')
    Fabricate(:post, kind: 'writing')
    Fabricate(:post, kind: 'geek')
  end

  step 'I visit the info page' do
    visit info_blocks_path
  end

  step 'I should see the posts' do
    page.should have_content('Post title')
  end

  step 'I should see them in the right place' do
    within '#music' do
      page.should have_css('.music-block')
    end

    within '#gaming' do
      page.should have_css('.gaming-block')
    end

    within '#code' do
      page.should have_css('.code-block')
    end

    within '#writing' do
      page.should have_css('.writing-block')
    end

    within '#geek' do
      page.should have_css('.geek-block')
    end
  end
end
