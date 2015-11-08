class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :story_name
      t.string :description
      t.string :ownedbyplayer

    end
  end
end
