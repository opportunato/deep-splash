module ApplicationHelper
  def post_image(post, is_featured)
    post.preview_image.url(is_featured ? :large : :normal)
  end
end
