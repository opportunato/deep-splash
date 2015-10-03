class Post < ActiveRecord::Base
  mount_uploader :preview_image, PreviewImageUploader

  scope :published, -> { where(is_published: true).order('created_at DESC') }

  validates_presence_of :title, :author, :body, :video_url, :link, :preview_image
end