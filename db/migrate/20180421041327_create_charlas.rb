class CreateCharlas < ActiveRecord::Migration[5.2]
  def change
    create_table :charlas do |t|

      t.timestamps
    end
  end
end
