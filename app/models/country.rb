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
