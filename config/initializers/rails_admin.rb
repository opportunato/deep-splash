RailsAdmin.config do |config|
  config.main_app_name = ['deepsplash', 'Admin']

  config.included_models = [Post]

  config.model 'Post' do
    edit do
      field :title
      field :author
      field :body, :ck_editor
      field :link
      field :video_url
      field :preview_image
      field :is_published
    end

    list do
      field :title
      field :author
    end
  end
end
