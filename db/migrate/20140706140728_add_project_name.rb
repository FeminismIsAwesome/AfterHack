class AddProjectName < ActiveRecord::Migration
  def change
    add_column :youth_hackers, :projectname, :string
  end
end
