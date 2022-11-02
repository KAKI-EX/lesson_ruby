
class Ganken #じゃんけんクラス
  def initialize(player,bot)
    @player_chose = player
    @bot_chose = bot
  end

  def p_chose_stone #プレイヤーがグーを選択した
    if @bot_chose == 1
      puts "----------------------------------------------------------"
      puts "相手の選択はグー！"
      puts "あいこでした！次のあなたの選択は・・・"
      
    elsif @bot_chose == 2
      puts "----------------------------------------------------------"
      puts "相手の選択はチョキ！"
      puts "あなたの勝ち！"
    elsif @bot_chose == 3
      puts "----------------------------------------------------------"
      puts "相手の選択はパー！"
      puts "あなたの負け！" 
    end
  end

  def p_chose_scissors #プレイヤーがチョキを選択した
    if @bot_chose == 1
      puts "----------------------------------------------------------"
      puts "相手の選択はグー！"
      puts "あなたの負け！"
    elsif @bot_chose == 2
      puts "----------------------------------------------------------"
      puts "相手の選択はチョキ！"
      puts "あいこでした！次のあなたの選択は・・・"
    elsif @bot_chose == 3
      puts "----------------------------------------------------------"
      puts "相手の選択はパー！"
      puts "あなたの勝ち！"
    end
  end
  
  def p_chose_paper #プレイヤーがパーを選択した
    if @bot_chose == 1
      puts "----------------------------------------------------------"
      puts "相手の選択はグー！"
      puts "あなたの勝ち！"
    elsif @bot_chose == 2
      puts "----------------------------------------------------------"
      puts "相手の選択はチョキ！"
      puts "あなたの負け！"
      puts "----------------------------------------------------------"
    elsif @bot_chose == 3
      puts "相手の選択はパー！"
      puts "あいこでした！次のあなたの選択は・・・"
    end
  end
end

#---------------------------------じゃんけんクラス終了---------------------------------
#----------------------------あっち向いててほいクラス記載開始----------------------------

class Atchmuite_hoi #じゃんけん勝敗後のあっち向いてほい
  def player_hoi #プレイヤーがbotに対してあっち向いてホイ
    puts "----------------------------------------------------------"
    puts "あっち向いて・・・"
    puts "どっちを指差しますか！？"
    puts "1.左　2.右　3.上　4.下"
    hoi_player_chose = gets.to_i
    hoi_bot_chose = rand(1..4)
      if hoi_bot_chose == 1
        puts "ボットは左を向いた！"
        puts "----------------------------------------------------------"
      elsif hoi_bot_chose == 2
        puts "ボットは右を向いた！"
        puts "----------------------------------------------------------"
      elsif hoi_bot_chose == 3
        puts "ボットは上を向いた！"
        puts "----------------------------------------------------------"
      elsif hoi_bot_chose == 4
        puts "ボットは下を向いた！"
        puts "----------------------------------------------------------"
      end

      if hoi_player_chose == hoi_bot_chose #プレイヤーの勝ち
        puts "ほーい！"
        puts "あなたの勝ち！botは怒って改めてじゃんけんを仕掛けてきた！"
        puts "止める場合は4を選択してください"
      else
        puts "ほーい！" #プレイヤーの負け
        puts "残念！botがニヤついている！じゃんけんからやり直し！"
        puts "止める場合は4を選択してください"
      end
  end
  def bot_hoi #botがプレイヤーに対してあっち向いてホイ
    puts "----------------------------------------------------------"
    puts "あっち向いて・・・"
    puts "やばい！どっちを向きますか！？"
    puts "1.左　2.右　3.上　4.下"
    hoi2_player_chose = gets.to_i
    hoi2_bot_chose = rand(1..4)
      if hoi2_bot_chose == 1
        puts "ボットは左を指差した！"
        puts "----------------------------------------------------------"
      elsif hoi2_bot_chose == 2
        puts "ボットは右を指差した！"
        puts "----------------------------------------------------------"
      elsif hoi2_bot_chose == 3
        puts "ボットは上を指差した！"
        puts "----------------------------------------------------------"
      elsif hoi2_bot_chose == 4
        puts "ボットは下を指差した！"
        puts "----------------------------------------------------------"
      end

      if hoi2_bot_chose == hoi2_player_chose
        puts "ほーい！"
        puts "あなたの負け！botは大きな声をあげてあなたを指差して笑っている！"
        puts "止める場合は4を選択してください"
      else
        puts "ほーい！"
        puts "セーフ！botが舌打ちをしている！態度が悪いbotだ！"
        puts "止める場合は4を選択してください"
      end
  end 
end
#----------------------------あっち向いてほいクラス終了----------------------------
#-----------------------------------クラス配置----------------------------------　　　

loop{
puts "----------------------------------------------------------"
puts "最初はグー！じゃーんけーんぽん！"
puts "1.グー　2.チョキ　3.パー 4.終了"
player_chose = gets.to_i
bot_chose = rand(1..3)

case player_chose
  when 1
    stone = Ganken.new(1,bot_chose)
    stone.p_chose_stone()
  when 2
    scissors = Ganken.new(2,bot_chose)
    scissors.p_chose_scissors()
  when 3
    paper = Ganken.new(3,bot_chose)
    paper.p_chose_paper()
  when 4
    break
  else
    puts "数字を半角で入力し、returnを押してください"
end

#プレイヤーがじゃんけん勝ちの全パターン
player_win_pattarn1 = player_chose == 1 && bot_chose == 2
player_win_pattarn2 = player_chose == 2 && bot_chose == 3
player_win_pattarn3 = player_chose == 3 && bot_chose == 1

#Botがじゃんけん勝ちの全パターン
bot_win_pattarn1 = player_chose == 1 && bot_chose == 3
bot_win_pattarn2 = player_chose == 2 && bot_chose == 1
bot_win_pattarn3 = player_chose == 3 && bot_chose == 2

if player_win_pattarn1 || player_win_pattarn2 || player_win_pattarn3
  Atchmuite_hoi.new.player_hoi
elsif bot_win_pattarn1 || bot_win_pattarn2 || bot_win_pattarn3
  Atchmuite_hoi.new.bot_hoi
end

}

