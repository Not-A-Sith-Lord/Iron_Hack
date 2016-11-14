class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
     	t.datetime "created_at"
    	t.datetime "updated_at"
    	t.string   "name"
    	t.string   "content"
    	t.integer  "concert_id"

      t.timestamps
    end
  end
end
