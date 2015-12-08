RailsAdmin.config do |config|
  config.authenticate_with do
    if ENV['ADMIN_USERNAME'].present?
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['ADMIN_USERNAME'] &&
        password == ENV['ADMIN_PASSWORD']
      end
    end
  end

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
