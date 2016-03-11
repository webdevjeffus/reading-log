class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :firstname, null: false, limit: 24
      t.string  :lastname, null: false, limit: 24
      t.string  :username,  null: false, unique: true, limit: 20
      t.string  :email,     null: false, unique: true
      t.string  :password_digest, null: false

      t.timestamps  null: false
    end
  end
end
