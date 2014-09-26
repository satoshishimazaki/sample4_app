class Segment < ActiveRecord::Base
	has_many :stores
	has_many :articles
end
