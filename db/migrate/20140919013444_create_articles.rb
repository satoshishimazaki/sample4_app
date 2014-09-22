class CreateArticles < ActiveRecord::Migration
  # REVIEW カテゴリ（飲食、ショッピング）を追加してカテゴリ別表記をさせたいのですが、わからないです。
  def change
    create_table :articles do |t|
      t.string :herenowtitle
      t.string :title
      t.string :content
      t.integer :store_id

      t.timestamps
    end
    add_index :articles, [:store_id, :created_at]
  end
end
