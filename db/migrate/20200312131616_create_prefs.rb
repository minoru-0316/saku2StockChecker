class CreatePrefs < ActiveRecord::Migration[6.0]
  def change
    create_table :prefs do |t|
      t.integer :pref_code
      t.string :pref_name

      t.timestamps
    end
  end
end
