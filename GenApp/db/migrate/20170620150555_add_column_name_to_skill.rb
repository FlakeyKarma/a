class AddColumnNameToTableName < ActiveRecord::Migration[5.0]
  def change
    add_column :table_names, :Skill, :text
  end
end
