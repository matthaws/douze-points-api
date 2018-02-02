# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  flag_url   :string
#  big_five   :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Country < ApplicationRecord
  validates :name, presence: true
  validates :country, uniqueness: true

  has_many :entries

  has_many :contests,
    foreign_key: :host_country_id

  def contest_wins
    #should return those entries WHERE contest.winning_entry_id == country.id
  end

end
