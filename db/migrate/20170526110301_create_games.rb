class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string  :title
      t.string  :genre
      t.boolean :couch_coop
      t.boolean :multiplayer

      t.timestamps(null: false)
    end
  end
end
