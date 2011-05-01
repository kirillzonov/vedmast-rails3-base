class CreateInformation < ActiveRecord::Migration
  def self.up
    create_table :information do |t|
      t.string :title
      t.text :content
      t.string :short

      t.timestamps
    end
  end

  def self.down
    drop_table :information
  end
end
