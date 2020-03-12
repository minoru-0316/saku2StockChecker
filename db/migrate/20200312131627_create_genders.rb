class CreateGenders < ActiveRecord::Migration[6.0]
  def change
    create_table :genders do |t|
      t.integer :gender_code
      t.string :gender_type

      t.timestamps
    end
  end
end
