require "csv"
puts "新規でメモを作成する場合は[1]を"
puts "既存のメモを編集する場合は[2]を入力してください"
memo_type = gets.chomp.to_s
# if文で条件分岐
if memo_type == "1" 
    puts "新規メモのファイル名を入力してください（拡張子は除く）"
    memo_title = gets.chomp.to_s
    puts "ファイル名[" + memo_title + ".csv]" 
    puts "メモの内容を入力してください。" 
    puts "入力が終わったら、[Ctrl+D]を押してください"
     memo_input = readlines
     CSV.open("#{memo_title}.csv",'w') do |csv|
      csv << [memo_input]
end

 elsif memo_type == "2"
    puts "編集したいメモのファイル名を入力してください（拡張子は除く）"
    edit_memo = gets.chomp.to_s
    puts "ファイル名[" + edit_memo + ".csv]を編集"
    puts "編集が完了したら、[Ctrl+D]を押してください"
    memo_input = readlines
    CSV.open("#{edit_memo}.csv",'a') do |csv|
    csv << [memo_input]
end

  else
    puts "エラー"
    
  end
  
