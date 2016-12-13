class Post < ActiveRecord::Base
	mount_uploader :image, ImageUploader # Tells rails to use this uploader for this model.
	validates :joke, length: { maximum: 55 }
	validates :answer, length: { maximum: 55 }
end
