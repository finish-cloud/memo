require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s

if selectNumber == 1
    puts "拡張子で書いたファイルを入力してください"
    file_name = gets
    file = File.open("#{file_name}.csv", "w") do |csv|