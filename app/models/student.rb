class Student < ApplicationRecord
  belongs_to :institution
  belongs_to :country
end
