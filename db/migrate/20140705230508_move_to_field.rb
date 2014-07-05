class MoveToField < ActiveRecord::Migration
  def change
    add_column :youth_hackers, :category, :string
  end
end
