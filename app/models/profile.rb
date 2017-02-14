# require 'rmagick'
# include Magick

class Profile
	
  include Mongoid::Document
  include Mongoid::Timestamps
  

  field :product_image, type: String
  field :product_image_tmp, type: String
  field :iv, type: Moped::BSON::Binary 
  field :key, type: Moped::BSON::Binary

  
  mount_uploader :product_image,ImageUploader
  store_in_background :product_image
    
 
  
 


# image = Image.read('product_image').first
# puts image.format

# image.write('product_image.svg')

# image = Image.read('product_image.svg').first
# puts image.format


end
