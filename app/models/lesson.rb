class Lesson < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  mount_uploader :image, ImageUploader
 	include PgSearch

	pg_search_scope :search, against: [:name, :description],
	using: {tsearch: {dictionary: "english"}}

  def self.text_search(query)
  	if query.present?
  		search(query)
  	end
  end
end
