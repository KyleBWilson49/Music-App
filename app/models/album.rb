# == Schema Information
#
# Table name: albums
#
#  id             :integer          not null, primary key
#  name           :text             not null
#  band_id        :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  recording_type :text
#

class Album < ActiveRecord::Base
  validates :name, :band_id, :recording_type, presence: true

  belongs_to :band
  has_many :tracks, dependent: :destroy
end
