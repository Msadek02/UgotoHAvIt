class Product < ActiveRecord::Base
    has_many :categories
	mount_uploader :picture, AvatarUploader
end
