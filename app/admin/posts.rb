ActiveAdmin.register Post do
  index do
    column :title
    column :teaser
    column :body

    default_actions
  end
end
