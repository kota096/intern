class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.float :d_time
      t.float :n_time

      t.timestamps
    end
  end
end
