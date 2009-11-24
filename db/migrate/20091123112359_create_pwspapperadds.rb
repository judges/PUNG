class CreatePwspapperadds < ActiveRecord::Migration
  def self.up
    create_table :pwspapperadds do |t|
      t.integer :newspappertid
      t.integer :tyepeid
      t.integer :sizeid
      t.integer :price

      t.timestamps
    end
  end

  def self.down
    drop_table :pwspapperadds
  end
end
