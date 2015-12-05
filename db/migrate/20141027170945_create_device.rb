class CreateDevice < ActiveRecord::Migration
  def change
    create_table :device do |t|
      t.string :mac_address
      t.string :type
      t.string :hotspot_to_connect

      t.timestamps
    end
  end
end
