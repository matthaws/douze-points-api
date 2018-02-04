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
  validates :name, uniqueness: true

  has_many :entries

  has_many :hosted_contests,
    class_name: :Contest,
    foreign_key: :host_country_id

  def contest_wins
    self.entries.where(final_ranking: 1)th
  end

end
