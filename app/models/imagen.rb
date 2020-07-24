class Imagen < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  validates :avatar, presence: true
end
