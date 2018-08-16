class CreateTherapies < ActiveRecord::Migration[5.1]
  def change
    create_table :therapies do |t|
      t.string :name
      t.string :description
      t.decimal :value, :decimal, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
