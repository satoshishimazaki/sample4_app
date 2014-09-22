class Article < ActiveRecord::Base
	belongs_to :store
	has_one :image, class_name: "ArticleImage", dependent: :destroy
	default_scope -> { order('created_at DESC') }
	validates :herenowtitle, presence: true
	validates :title, presence: true
	validates :content, presence: true
	validates :store_id, presence: true
end
