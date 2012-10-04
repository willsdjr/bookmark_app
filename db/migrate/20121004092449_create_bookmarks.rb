class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :URL
      t.string :Name
      t.datetime :Date_Saved

      t.timestamps
    end
  end
end
