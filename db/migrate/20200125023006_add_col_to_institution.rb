class AddColToInstitution < ActiveRecord::Migration[5.2]
  def change
  add_column :institutions, :country, :string
  end
end
