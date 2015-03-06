class CreateLyrics < ActiveRecord::Migration
  def change
    create_table :lyrics do |t|
      t.string :title
      t.string :lyricist
      t.string :composer
      t.string :singer
      t.text :content

      t.timestamps
    end
  end
end
