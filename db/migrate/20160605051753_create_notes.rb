class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.references :user, foreign_key: true
      t.string :content
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
