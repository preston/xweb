class CreateAlbums < ActiveRecord::Migration

  def self.up

    create_table :albums do |t|
      t.string :name,					:null => false
      t.string :description,	:null => false
      t.integer :year,				:null => false
      t.timestamps
    end

		add_index	:albums, :name
		add_index	:albums, :description
		
  end

  def self.down
		remove_index	:albums, :name
		remove_index	:albums, :description

    drop_table :albums

  end
end
