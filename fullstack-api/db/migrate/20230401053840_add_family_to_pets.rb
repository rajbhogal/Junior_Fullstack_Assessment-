class AddFamilyToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :family, :boolean, default: false
  end
end
