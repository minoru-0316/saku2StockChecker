# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 家庭用備蓄品マスタ stockplain.csv
require "csv"
CSV.foreach('db/csv/stockplain.csv') do |row|
Stockplain.create(:stock_code => row[0], :stock_name => row[1], :stock_quantity => row[2]);
end

# # # 都道府県マスタ pref.csv
require "csv"
CSV.foreach('db/csv/pref.csv') do |row|
Pref.create(:pref_code => row[0], :pref_name => row[1]);
end

# # # 性別マスタ gender.csv
require "csv"
CSV.foreach('db/csv/gender.csv') do |row|
Gender.create(:gender_code => row[0], :gender_type => row[1]);
end

# # # 年代マスタ age.csv
require "csv"
CSV.foreach('db/csv/age.csv') do |row|
Age.create(:age_code => row[0], :age_period => row[1]);
end

# # # 職業マスタ job.csv
require "csv"
CSV.foreach('db/csv/job.csv') do |row|
Job.create(:job_code => row[0], :job_name => row[1]);
end