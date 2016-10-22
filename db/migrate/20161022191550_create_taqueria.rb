class CreateTaqueria < ActiveRecord::Migration[5.0]
  def change
    create_table :taqueria do |t|
      t.string :taqueria_name
      t.string :description
      t.string :title
      t.string :primary_img
      t.string :secondary_img
      t.string :location
      t.belongs_to :region, foreign_key: true

      t.timestamps
    end
  end
end
