class CreateCampsite < ActiveRecord::Migration[6.1]
  def change
    create_table :campsite do |t|

      t.timestamps
    end
  end
end
