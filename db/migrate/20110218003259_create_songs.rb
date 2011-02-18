class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string :name,	:null => false
      t.integer :runtime
      t.integer :album_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end
