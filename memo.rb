require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_number = gets.to_i

if memo_number == 1
    puts "拡張子で書いたファイルを入力してください"
    file_name = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したら、ctrl+Dを押してください"
    
    content = readlines(chomp: true)
    CSV.open("#{file_name}.csv", "w")do |csv|
    csv << content
end

elsif memo_number == 2
    puts "既存メモの拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp
    puts "追記したい内容を記入してください"
    puts "完了したらctrl+Dを押してください"
    
    content = readlines(chomp: true)
    CSV.open("#{file_name}.csv", "a")do |csv|
    csv << content
end

else
    puts "1,2の数字以外が入力されました。再度ファイルを実行後。1,2のどちらかを入力してください"

end