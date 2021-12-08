class CreateProject2 < ActiveRecord::Migration[6.1]
  def change
    create_table :project2s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
