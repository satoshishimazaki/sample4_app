class AddSegmentIdToStores < ActiveRecord::Migration
  def change
  	add_column :stores, :segment_id, :integer
    add_index :stores, :segment_id
  end
end
