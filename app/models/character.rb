class Character  < ActiveRecord::base
  belongs_to :player

  validates :name, presence: true
  validates :int, presence: true
  validates :wits, presence: true
  validates :res, presence: true
  validates :str, presence: true
  validates :dex, presence: true
  validates :stam, presence: true
  validates :cha, presence: true
  validates :manip, presence: true
  validates :academics, presence: true
  validates :computer, presence: true
  validates :crafts, presence: true
  validates :investigation, presence: true
  validates :medicine, presence: true
  validates :occult, presence: true
  validates :politics, presence: true
  validates :science, presence: true
  validates :athletics, presence: true
  validates :brawl, presence: true
  validates :drive, presence: true
  validates :firearms, presence: true
  validates :larceny, presence: true
  validates :stealth, presence: true
  validates :survival, presence: true
  validates :weaponry, presence: true
  validates :animal ken, presence: true
  validates :empathy, presence: true
  validates :expression, presence: true
  validates :intimidation, presence: true
  validates :persuasion, presence: true
  validates :socialize, presence: true
  validates :streetwise, presence: true
  validates :subterfuge, presence: true
  validates :meritlist, presence: true
  validates :powerlist, presence: true

end
