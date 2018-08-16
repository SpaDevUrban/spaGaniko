class CreateTherapists < ActiveRecord::Migration[5.1]
  def change
    create_table :therapists do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :cpf
      t.string :phone1
      t.string :phone2

      t.timestamps
    end
  end
end
