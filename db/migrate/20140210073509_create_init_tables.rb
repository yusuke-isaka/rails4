class CreateInitTables < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title, :charset => :utf8
      t.text    :content, :charset => :utf8
      t.text    :thumbnail, :charset => :utf8
      t.integer :created_by
      t.integer :updated_by
      t.integer :lock_version, :default=>0, :null=>false
      t.timestamps
    end
  end
end
