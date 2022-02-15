class Doctor < ActiveRecord::Base
  # Associations DSL
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  # Validations DSL
  validates :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
end
