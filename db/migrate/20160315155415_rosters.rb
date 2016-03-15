class Rosters < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string      :name, limit: 50, null: false
      t.text        :description # optional field

      t.integer     :user_id, null: false, index: true

      t.timestamps  null: false
    end
  end
end
