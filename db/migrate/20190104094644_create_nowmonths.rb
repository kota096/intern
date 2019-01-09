class CreateNowmonths < ActiveRecord::Migration[5.1]
  def change
    create_table :nowmonths do |t|
      t.integer :month

      t.timestamps
    end
  end
end
