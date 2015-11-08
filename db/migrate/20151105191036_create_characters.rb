class CreateCharacters < ActiveRecord::Migration
  def change
      create_table :characters do |t|
        t.references :player, index: true, foreign_keys: true
        t.string :name
        t.integer :int
        t.integer :wits
        t.integer :res
        t.integer :str
        t.integer :dex
        t.integer :stam
        t.integer :cha
        t.integer :manip
        t.integer :comp
        t.integer :academics
        t.integer :computer
        t.integer :crafts
        t.integer :investigation
        t.integer :medicine
        t.integer :occult
        t.integer :politics
        t.integer :science
        t.integer :athletics
        t.integer :brawl
        t.integer :drive
        t.integer :firearms
        t.integer :larceny
        t.integer :stealth
        t.integer :survival
        t.integer :weaponry
        t.integer :animalken
        t.integer :empathy
        t.integer :expression
        t.integer :intimidation
        t.integer :persuasion
        t.integer :socialize
        t.integer :streetwise
        t.integer :subterfuge

        t.string :meritlist
        t.string :powerlist
        t.string :experience

        t.timestamps
      end
    end
end
