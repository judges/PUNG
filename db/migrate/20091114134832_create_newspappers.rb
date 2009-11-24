class CreateNewspappers < ActiveRecord::Migration
  def self.up
    create_table :newspappers do |t|
      t.integer :regionid
      t.string :newspappername
      t.string :newspappertype
      t.string :newspasserperiod
      t.integer :newsspapperpages
      t.string :newspapperprinttype
      t.text :newsspapperdescription
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :newspappers
  end
end
