class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :login
      t.string :email
      t.string :full_name
      t.integer :sign_in_count, default: 0, null: false

      t.timestamps
    end
  end
end
