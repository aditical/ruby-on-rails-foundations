class TaskFileUploader < CarrierWave::Uploader::Base

  #include RMagick or MiniMagic support 
  include CarrierWave::mini_magick

  #include the sprockets-rails helper for Rails 4+ asset pipeline compatibility 
  include Sprockets::Rails::Helper

  # Choose what kind of storage to use for the uploader
  # storage : file
  storage : fog

  # Override the directory where uploaded files will be restored 
  # This is a sensible default for uplaoders that are meant to be mounted:
  def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Add a white list of extensions which are allowed to be uplaoded. 
  #For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png pdf mp4 wmv xls xlsx doc docx ppt pptx mov)
  end
end
