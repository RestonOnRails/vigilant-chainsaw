class CreateBoots < ActiveRecord::Migration[5.0]
  def change
    create_table :boots do |t|
      t.string :color
      t.string :style
      t.string :gender
      t.string :size
      t.string :clay_type

      t.timestamps
    end
  end
end
