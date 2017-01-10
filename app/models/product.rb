class Product < ActiveRecord::Base
	extend FriendlyId
    has_many :categories
    belongs_to :subcategory
	mount_uploader :picture, AvatarUploader
    friendly_id :name, use: :slugged
end
