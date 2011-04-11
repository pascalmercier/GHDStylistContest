class CreateStylists < ActiveRecord::Migration
  def self.up
    create_table :stylists do |t|
      t.string :picture_url
      t.string :name
      t.string :salon

      t.timestamps
    end
  end

  def self.down
    drop_table :stylists
  end
end
