# == Schema Information
#
# Table name: songs
#
#  id         :integer         not null, primary key
#  artist     :string(255)
#  title      :string(255)
#  tier       :string(255)
#  game_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Song < ActiveRecord::Base
  attr_accessible :artist, :game_id, :tier, :title, :game
  belongs_to :game
end
