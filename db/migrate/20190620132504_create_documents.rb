class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_foreign_key :documents, :users
  end
end
