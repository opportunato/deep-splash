class Post < ActiveRecord::Base
  extend FriendlyId
  
  mount_uploader :preview_image, PreviewImageUploader

  scope :published, -> { where(is_published: true).order('created_at DESC') }
  friendly_id :author, use: :slugged

  validates_presence_of :title, :author, :body, :video_url, :link, :preview_image

  def video_type
    if (video_url.include? "youtube.com") then return :youtube end
    if (video_url.include? "vimeo.com") then return :vimeo end
  end

  def video_id
    case video_type
    when :youtube
      video_url.match(/youtube.com\/watch\?v=(\w+)/).try(:[], 1)
    when :vimeo
      video_url.match(/vimeo.com\/(\d+)/).try(:[], 1)
    end
  end
end