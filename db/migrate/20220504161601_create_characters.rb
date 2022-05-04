class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :role
      t.string :desc
      t.string :logo_image
      t.string :fullbody_image

      t.integer :hp
      t.integer :shield

      t.string :weapon1
      t.string :weapon2
      t.string :capacity1
      t.string :capacity2
      t.string :capacity3
      t.string :capacity4
      t.string :ultimate

      t.string :passive1
      t.string :passive2
      t.string :passiverole

      t.timestamps
    end
  end
end
