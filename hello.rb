users = {
  name: "Takuya",
  height: 175,
  weight: 60,
  gender: "男"
  }
  
  # ハッシュを出力する
  p users
  puts "----------"
  
  # usersハッシュに:telで新たにオブジェクトを追加する
  users[:tel] = "0801234567"
  
  # ハッシュを出力する
  p users
  puts "----------"
  
  # ハッシュの要素を削除する
  users.delete(:weight)
  
  # ハッシュを出力する
  p users