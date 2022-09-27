class CreateGame < ActiveRecord::Migration[6.1]
  def change
    create_table :game do |t|
      t.string :title
      t.string :genre
      t.string :image_url

      t.integer :platform_id

      t.timestamps
    end
  end
end
