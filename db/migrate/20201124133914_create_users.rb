class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :user, foreign_key: true
      t.string :encrypted_password, null: false, default: ""
      t.timestamps
    end
  end
end
