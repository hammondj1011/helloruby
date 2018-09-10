class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.integer :userid
      t.string :firstname
      t.string :lastname
      t.string :job
      t.datetime :dob

      t.timestamps
    end
  end
end
