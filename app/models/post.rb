class Post < ActiveRecord::Base
  extend FriendlyId
  
  mount_uploader :preview_image, PreviewImageUploader

  scope :published, -> { where(is_published: true).order('created_at DESC') }
  friendly_id :author, use: :slugged

  validates_presence_of :title, :author, :body, :video_url, :link, :preview_image
end