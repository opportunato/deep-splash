class PreviewImageUploader < BaseUploader
  version :normal do
    process resize_to_fill: [800, 320]
    process convert: 'jpg'
  end

  version :large do
    process resize_to_fill: [1400, 560]
    process convert: 'jpg'
  end
end
