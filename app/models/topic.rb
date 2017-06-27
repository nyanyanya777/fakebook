class Topic < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  validates :content, presence: true

  has_many :comment, dependent: :destroy
  belongs_to :user
end
