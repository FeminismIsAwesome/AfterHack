class AddTech < ActiveRecord::Migration
  def change
    add_column :youth_hackers, :tech, :string
    add_column :mentors, :tech, :string
    add_column :mentors, :mentor_type, :string
  end
end
