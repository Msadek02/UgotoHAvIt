class Product < ActiveRecord::Base

	mount_uploader :picture, AvatarUploader
end
