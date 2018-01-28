class Wear < ApplicationRecord
	 validates :image, presence: true

	 mount_uploader :image, ImageUploader
	 has_many :favorites
	 has_many :favorite_users, through: :favorites, source: 'user'
	 has_many :recentclicks, dependent: :destroy
	 enum status: { man: 1, weman: 2, unisex:3 }
	 enum category: { tops: 1, outer: 2, pants: 3, all_in_one: 4, skirt: 5, dress: 6, bag: 7, shoes: 8, accessory: 9 }
end
