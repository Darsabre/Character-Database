class Story  < ActiveRecord::Base
  belongs_to :player

   validates :name, presence: true
   validates :description, presence: true
end
