# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  # require 'rmagick' 
  # require "image_processing/mini_magick"

  require "mini_magick"
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

 

  version :large do

    resize_to_limit(600, 600)
  end

  version :thumb do
    process :cropimg
    resize_to_fill(100, 100)
  end
  
  def cropimg
    # u = ""
    binding.pry

      if model.crop_x.present?
        resize_to_limit(600, 600)
          manipulate! do |img|
            x = model.crop_x.to_i
            y = model.crop_y.to_i
            w = model.crop_w.to_i
            h = model.crop_h.to_i

          img.crop([[w, h].join('x'),[x, y].join('+')].join('+'))
          model.crop_x = nil
          model.crop_y = nil
          model.crop_w = nil
          model.crop_h = nil
          binding.pry
          model.update(:image => img)
          
          # img.tap(&:auto_orient)
          # break;

          end
          # self.update(u)          
      end
      binding.pry
  end
  
end
