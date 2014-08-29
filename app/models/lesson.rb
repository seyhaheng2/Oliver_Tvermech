class Lesson < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  mount_uploader :image, ImageUploader
end
