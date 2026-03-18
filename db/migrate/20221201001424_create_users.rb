class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true, limit: 32
      t.string :email, null: false, unique: true, limit: 64
      t.string :password, null: false, limit: 64

      t.timestamps
    end
  end
end
