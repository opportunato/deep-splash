class PreviewImageUploader < BaseUploader
  version :large do
    process resize_to_fill: [922, 620]
    process convert: 'jpg'
  end
end
