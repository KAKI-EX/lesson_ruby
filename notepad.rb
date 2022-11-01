
loop{  #ループ処理の始まり

require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する / 3 → メモを見る / 4 → 終了"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

class New_memo  #動作：新規作成
  def make_new_memo
    puts "新規のメモを作成します。メモを入力後にreturnを押し、ctrl + Dで保存します。"
    new_notepad = STDIN.read
    puts "保存するファイル名を入力し、returnを押してください。"
    new_name = gets.chomp

    CSV.open("#{new_name}.csv","w") do |new_csv|
      new_csv << ["#{new_notepad}"]
    end
  end
end

class Modify_memo #；既存ファイルの編集
  def modify_old_memo
    puts"編集するメモの名前を入力してください。(拡張子は除く)"
    target_file = gets.chomp

    CSV.open("#{target_file}.csv","a") do |mod_csv|
      puts"メモの追記が終わったら、ctrl + Dで保存します。"
      modify_notepad = STDIN.read
      mod_csv << ["#{modify_notepad}"]
    end
  end
end

class Checkout_memo #既存ファイル内容の確認
  def checkout_memo_record
    puts"確認したいメモのファイル名を入力してください。(拡張子は除く)"
    check_target = gets.chomp
    puts"----------------------------------"
    puts CSV.read("#{check_target}.csv")
    puts"----------------------------------"
    puts"Ctrl + Dで終了します。"
  end
end

case memo_type
  when 1
  New_memo.new.make_new_memo
  when 2
    Modify_memo.new.modify_old_memo
  when 3    #read文でファイル名を間違えるとエラーが出るため例外処理を追加
    begin
      Checkout_memo.new.checkout_memo_record
    rescue
      puts"エラーです。そのメモは存在しません。"
    end
  when 4
    puts"終了します"
    break   #roop処理を抜けるbreak文
  else
    puts"入力された数値に誤りがあります。"
end

} #ループ処理最終カッコ
