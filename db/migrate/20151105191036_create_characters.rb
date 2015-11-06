class CreateCharacters < ActiveRecord::Migration
  def change
      create_table :posts do |t|
        t.references :player, index: true, foreign_keys: true
        t.string :name
        t.int :int
        t.int :wits
        t.int :res
        t.int :str
        t.int :dex
        t.int :stam
        t.int :cha
        t.int :manip
        t.int :comp
        t.int :academics
        t.int :computer
        t.int :crafts
        t.int :investigation
        t.int :medicine
        t.int :occult
        t.int :politics
        t.int :science
        t.int :athletics
        t.int :brawl
        t.int :drive
        t.int :firearms
        t.int :larceny
        t.int :stealth
        t.int :survival
        t.int :weaponry
        t.int :animal ken

      end
    end
end
