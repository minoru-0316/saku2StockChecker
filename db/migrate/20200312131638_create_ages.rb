class CreateAges < ActiveRecord::Migration[6.0]
  def change
    create_table :ages do |t|
      t.integer :age_code
      t.string :age_period

      t.timestamps
    end
  end
end
