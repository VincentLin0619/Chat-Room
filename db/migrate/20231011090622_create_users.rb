class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, unique: true
      t.string :email, null: false, unique: true
      t.string :password_digest, unll: false
      t.integer :role, null: false, default: 0
      t.text :info, length: 300
      t.string :avatar

      t.timestamps
    end
  end
end
