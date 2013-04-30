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
      page.should have_css('.music_block')
    end

    within '#gaming' do
      page.should have_css('.gaming_block')
    end

    within '#code' do
      page.should have_css('.code_block')
    end

    within '#writing' do
      page.should have_css('.writing_block')
    end

    within '#myself' do
      page.should have_css('.myself_block')
    end

    within '#geek' do
      page.should have_css('.geek_block')
    end
  end
end
