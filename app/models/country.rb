class Country < ApplicationRecord
	has_many :institution
	has_many :student
end
