class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.string :day
      t.integer :dog_id
      t.integer :park_id
    end
  end
end
