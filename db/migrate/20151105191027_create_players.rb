class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :player_name
      t.string :password_digest

      t.timestamps
    end
  end
end
