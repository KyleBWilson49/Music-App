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

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
