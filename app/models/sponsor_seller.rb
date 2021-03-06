# frozen_string_literal: true

# == Schema Information
#
# Table name: sponsor_sellers
#
#  id            :bigint           not null, primary key
#  active        :boolean          default(TRUE), not null
#  logo_url      :string
#  name          :string
#  reward        :string
#  reward_cost   :integer          default(3), not null
#  reward_detail :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  location_id   :bigint
#
class SponsorSeller < ApplicationRecord
  validates_presence_of :reward_cost
  belongs_to :location, optional: true
end
