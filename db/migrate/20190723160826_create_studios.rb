class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :type
      t.boolean :is_verfied
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
