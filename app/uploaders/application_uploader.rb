# frozen_string_literal: true

class ApplicationUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model&.id}"
  end

  def name
    file&.filename
  end
end
