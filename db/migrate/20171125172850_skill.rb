class Skill < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :name, :string
    add_column :issues, :skill, :string
  end
end
