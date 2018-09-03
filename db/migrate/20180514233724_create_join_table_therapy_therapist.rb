class CreateJoinTableTherapyTherapist < ActiveRecord::Migration[5.1]
  def change
    create_join_table :therapies, :therapists do |t|
      t.index [:therapy_id, :therapist_id]
      t.index [:therapist_id, :therapy_id]
    end
  end
end
