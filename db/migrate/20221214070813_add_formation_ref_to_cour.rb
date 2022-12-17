class AddFormationRefToCour < ActiveRecord::Migration[7.0]
  def change
    add_reference :cours, :formation, foreign_key: true
  end
end
