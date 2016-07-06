class Product < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :name, length: { minimum: 3 }
end