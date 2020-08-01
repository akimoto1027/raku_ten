class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.datetime :date
      t.string :company
      t.string :site
      t.string :place
      t.string :phase
      t.text :url
      t.text :hp
      t.text :others
      t.text :features
      t.timestamps
    end
  end
end
