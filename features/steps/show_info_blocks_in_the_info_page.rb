class Spinach::Features::ShowInfoBlocksInTheInfoPage < Spinach::FeatureSteps
  step 'Info blocks from different kinds exist' do
    Fabricate(:info_block, kind: 'music')
    Fabricate(:info_block, kind: 'gaming')
    Fabricate(:info_block, kind: 'code')
    Fabricate(:info_block, kind: 'writing')
    Fabricate(:info_block, kind: 'myself')
    Fabricate(:info_block, kind: 'geek')
  end

  step 'I visit the info page' do
    visit info_blocks_path
  end

  step 'I should see the blocks' do
    page.should have_content('Info title')
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

    within '#myself' do
      page.should have_css('.myself-block')
    end

    within '#geek' do
      page.should have_css('.geek-block')
    end
  end
end
