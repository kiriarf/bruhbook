class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :text_content
      t.string :img_url
      t.integer :yes_bruhs
      t.integer :bullshit_bruhs
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
