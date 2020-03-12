class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers, id: :string do |t|
      t.integer :pref_code
      t.integer :gender_code
      t.integer :age_code
      t.integer :job_code
      t.integer :housing_code
      t.string :pref_name
      t.string :gender_type
      t.string :age_period
      t.string :job_name
      t.string :seismic_response
      t.string :housing_possession
      t.string :housing_type
      t.integer :household_size
      t.integer :adult_num
      t.integer :minor_num
      t.integer :bottolwater_2L
      t.integer :required_water
      t.boolean :result_water, default: 0, null: false
      t.integer :cooking_stove
      t.integer :required_stove
      t.boolean :result_stove, default: 0, null: false
      t.integer :cassette_gas
      t.integer :required_gas
      t.boolean :result_gas, default: 0, null: false
      t.integer :rice_2kg
      t.integer :required_rice
      t.boolean :result_rice, default: 0, null: false
      t.integer :dried_noodle
      t.integer :required_noodle
      t.boolean :result_noodle, default: 0, null: false
      t.integer :dried_pasta
      t.integer :required_pasta
      t.boolean :result_pasta, default: 0, null: false
      t.integer :cupped_noodle
      t.integer :required_cpnoodle
      t.boolean :result_cpnoodle, default: 0, null: false
      t.integer :packed_rice
      t.integer :required_pkrice
      t.boolean :result_pkrice, default: 0, null: false
      t.integer :cereal_etc
      t.integer :required_etc
      t.boolean :result_etc, default: 0, null: false
      t.integer :retort_food1
      t.integer :required_retort_1
      t.boolean :result_retort_1, default: 0, null: false
      t.integer :retort_food2
      t.integer :required_retort_2
      t.boolean :result_retort_2, default: 0, null: false
      t.integer :canned_food
      t.integer :required_canned
      t.boolean :result_canned, default: 0, null: false
      t.text :user_item_1
      t.integer :user_requied_num_1
      t.integer :user_result_num_1
      t.text :user_memo_1
      t.text :user_item_2
      t.integer :user_requied_num_2
      t.integer :user_result_num_2
      t.text :user_memo_2
      t.text :user_item_3
      t.integer :user_requied_num_3
      t.integer :user_result_num_3
      t.text :user_memo_3
      t.text :user_item_4
      t.integer :user_requied_num_4
      t.integer :user_result_num_4
      t.text :user_memo_4
      t.text :user_item_5
      t.integer :user_requied_num_5
      t.integer :user_result_num_5
      t.text :user_memo_5

      t.timestamps
    end
  end
end
