class Wear < ApplicationRecord
	 mount_uploader :image, ImageUploader
	 has_many :favorites
	 has_many :favorite_users, through: :favorites, source: 'user'

end
