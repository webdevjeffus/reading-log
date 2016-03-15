class Logs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer     :roster_id, null: false, index: true
      t.integer     :reader_id, null: false, index: true

      t.timestamps  null: false
    end
  end
end
