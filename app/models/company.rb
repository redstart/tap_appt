class Company < ActiveRecord::Base
# validations
  validates :name, presence: true, uniqueness: true
  validates :about, presence: true
  validates :profile, presence: true
  validates :customers_profile, presence: true

#relationships
  has_many :users, dependent: :destroy
end
