class CreateArticlesImages < ActiveRecord::Migration
  def change
    create_table :articles_images do |t|
      t.references :article, null:false
      t.binary :data
      t.string :content_type

      t.timestamps
    end

    add_index :articles_images, :article_id
  end
end
