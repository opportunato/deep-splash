module ApplicationHelper
  def post_image(post, is_featured)
    post.preview_image.url(is_featured ? :large : :normal)
  end

  def post_video(post)
    link = case post.video_type
    when :youtube
      "https://www.youtube.com/embed/#{post.video_id}"
    when :vimeo
      "https://player.vimeo.com/video/#{post.video_id}"
    end

    content_tag :iframe, nil, src: link, frameborder: "0", allowfullscreen: true
  end
end