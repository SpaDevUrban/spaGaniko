class Therapy < ApplicationRecord
	has_and_belongs_to_many :therapists
end