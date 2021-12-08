class AddTimestampsToProject2s < ActiveRecord::Migration[6.1]
  def change
    add_column :project2s, :created_at, :datetime
    add_column :project2s, :updated_at, :datetime
  end
end
