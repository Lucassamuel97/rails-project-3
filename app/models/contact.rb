class Contact < ApplicationRecord
    has_many :phones, dependent: :destroy
    mount_uploader :avatar, AvatarUploader
    accepts_nested_attributes_for :phones, reject_if: lambda { |a| a[:number].blank? }, allow_destroy: true
end
