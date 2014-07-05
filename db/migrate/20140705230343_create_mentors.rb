class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :gender
      t.string :address
      t.string :number
      t.string :email
      t.timestamps
    end
  end
end
