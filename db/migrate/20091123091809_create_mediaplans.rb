class CreateMediaplans < ActiveRecord::Migration
  def self.up
    create_table :mediaplans do |t|
      t.string :rianame
      t.string :riacontactpersone
      t.string :riaphone
      t.string :riamobile
      t.string :riaemail
      t.text :mediaplanauthidory
      t.integer :mediaplanexits
      t.date :mediaplanmonth
      t.integer :mediaplaaddstypeid
      t.text :mediaplasize
      t.string :mediaplanaditionalinfo

      t.timestamps
    end
  end

  def self.down
    drop_table :mediaplans
  end
end
