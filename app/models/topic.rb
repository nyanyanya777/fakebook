class Topic < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  default_scope -> { order(created_at: :desc) }

  validates :content, presence: true

  has_many :comment, dependent: :destroy
  belongs_to :user
end
