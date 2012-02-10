class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :height
      t.string :bust
      t.string :waist
      t.string :hips
      t.string :shoes
      t.string :eyes
      t.string :hair
      t.string :phone
      t.string :facebook
      t.string :suit
      t.string :inseam
      t.string :photos

      t.timestamps
    end
  end
end
