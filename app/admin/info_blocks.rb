ActiveAdmin.register InfoBlock do
  index do
    column :title
    column :body
    column :kind

    default_actions
  end
end
