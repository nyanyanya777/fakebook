class Topic < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  has_many :comment, dependent: :destroy
  belongs_to :user
end
