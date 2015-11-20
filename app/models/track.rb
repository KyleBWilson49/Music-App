# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  album_id   :integer          not null
#  name       :text             not null
#  track_num  :integer          not null
#  lyrics     :text
#  track_type :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ActiveRecord::Base
  validates :album_id, :name, :track_num, :track_type, presence: true

  belongs_to :album
  has_many :notes, dependent: :destroy
end
