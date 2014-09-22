class ArticlesImage < ActiveRecord::Base
	belongs_to :article

	IMAGE_TYPES = { "image/jpeg" => "jpg", "image/gif => "gif", "image/png" => "png" }
    def extension
    	IMAGE_TYPES[content_type]
    end
end
