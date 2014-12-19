class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title, :null => false
      t.text :description
      t.string :url
      t.integer :position
      t.integer :list_id
      t.timestamps
    end
  end
end
