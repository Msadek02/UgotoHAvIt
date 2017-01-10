class Subcategory < ActiveRecord::Base
	extend FriendlyId
	belongs_to :category
	has_many :products
    mount_uploader :picture, AvatarUploader
    friendly_id :name, use: :slugged
end
