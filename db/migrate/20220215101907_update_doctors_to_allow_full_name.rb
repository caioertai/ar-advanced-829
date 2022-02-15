class UpdateDoctorsToAllowFullName < ActiveRecord::Migration[6.1]
  def change
    rename_column :doctors, :name, :first_name
    add_column :doctors, :last_name, :string
  end
end
