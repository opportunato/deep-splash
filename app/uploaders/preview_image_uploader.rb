class PreviewImageUploader < BaseUploader
  version :normal do
    process resize_to_fill: [1000, 500]
    process convert: 'jpg'
  end

  version :large do
    process resize_to_fill: [1600, 800]
    process convert: 'jpg'
  end
end
