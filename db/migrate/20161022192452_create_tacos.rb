class CreateTacos < ActiveRecord::Migration[5.0]
  def change
    create_table :tacos do |t|
      t.string :title
      t.string :description
      t.string :image
      t.belongs_to :taqueria, foreign_key: true

      t.timestamps
    end
  end
end
