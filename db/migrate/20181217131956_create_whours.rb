class CreateWhours < ActiveRecord::Migration[5.1]
  def change
    create_table :whours do |t|
      t.string :wtime
      
      t.timestamps
    end
  end
end
