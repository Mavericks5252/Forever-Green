class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :name
      t.string :title
      t.text :context

      t.timestamps
    end
  end
end
