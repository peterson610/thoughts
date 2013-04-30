Fabricator(:info_block) do
  title  { sequence(:title) {|i| "Info title #{i}"}}
  body   { sequence(:body) {|i| "Info body #{i}"}}
end
