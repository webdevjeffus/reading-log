class Readers < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string      :username,  null: false, unique: true, limit: 20
      t.string      :password, limit: 20 # Reader passwords are not secure by design,
                          # so the owning user can view and edit them directly
      t.integer     :user_id, null: false, index: true

                    # Optional fields; users not required to provide them
      t.string      :reading_level, limit: 12
      t.string      :firstname, null: false, limit: 24
      t.string      :lastname, null: false, limit: 24

      t.timestamps  null: false
    end
end
