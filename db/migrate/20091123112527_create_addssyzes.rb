class CreateAddssyzes < ActiveRecord::Migration
  def self.up
    create_table :addssyzes do |t|
      t.string :addsssize
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :addssyzes
  end
end
