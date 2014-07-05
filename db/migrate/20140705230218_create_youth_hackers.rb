class CreateYouthHackers < ActiveRecord::Migration
  def change
    create_table :youth_hackers do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :address
      t.timestamps
    end
  end
end
