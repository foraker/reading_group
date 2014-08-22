class AddDataModel < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :active
    end
    add_index :users, :email

    create_table :comments do |t|
      t.references :author
      t.text :body
    end

    create_table :moderations do |t|
      t.references :comment
      t.references :moderator
    end
  end
end
