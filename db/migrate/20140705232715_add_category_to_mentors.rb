class AddCategoryToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :category, :string
  end
end
