class PreviewImageUploader < BaseUploader
  version :normal do
    process resize_to_fill: [922, 620]
    process convert: 'jpg'
  end

  version :large do
    process resize_to_fill: [1600, 700]
    process convert: 'jpg'
  end
end
