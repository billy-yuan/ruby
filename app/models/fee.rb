# frozen_string_literal: true

# == Schema Information
#
# Table name: fees
#
#  id         :bigint           not null, primary key
#  active     :boolean          default(TRUE)
#  multiplier :decimal(, )      default(1.0)
#  seller_id  :bigint
#
# Indexes
#
#  index_fees_on_seller_id  (seller_id)
#
class Fee < ApplicationRecord
  belongs_to :seller
end
