# == Schema Information
#
# Table name: contests
#
#  id               :integer          not null, primary key
#  year             :integer          not null
#  winning_entry_id :integer
#  location         :string
#  host_country_id  :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Contest < ApplicationRecord
  validates :year, :host_country_id, presence: true
  validates_uniqueness_of :winning_entry_id, scope: :year

  has_one :host_country,
    class_name: :Country,
    foreign_key: :host_country_id

  has_many :entries

  has_many :scoresheets

end
