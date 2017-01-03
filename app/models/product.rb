class Product < ActiveRecord::Base
    has_many :categories
    belongs_to :subcategory
	mount_uploader :picture, AvatarUploader
end
