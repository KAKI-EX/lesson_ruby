
class Ganken
  def initialize(player,bot)
    @player_chose = player
    @bot_chose = bot
  end

  def p_chose_stone #プレイヤーがグーを選択した
    if @bot_chose == 1
      puts "相手の選択はグー！"
      puts "あいこでした！次のあなたの選択は・・・"
    elsif @bot_chose == 2
      puts "相手の選択はチョキ！"
      puts "あなたの勝ち！"
    elsif @bot_chose == 3
      puts "相手の選択はパー！"
      puts "あなたの負け！" 
    end
  end

  def p_chose_scissors #プレイヤーがチョキを選択した
    if @bot_chose == 1
      puts "相手の選択はグー！"
      puts "あなたの負け！"
    elsif @bot_chose == 2
      puts "相手の選択はチョキ！"
      puts "あいこでした！次のあなたの選択は・・・"
    elsif @bot_chose == 3
      puts "相手の選択はパー！"
      puts "あなたの勝ち！"
    end
  end
  
  def p_chose_paper #プレイヤーがパーを選択した
    if @bot_chose == 1
      puts "相手の選択はグー！"
      puts "あなたの勝ち！"
    elsif @bot_chose == 2
      puts "相手の選択はチョキ！"
      puts "あなたの負け！"
    elsif @bot_chose == 3
      puts "相手の選択はパー！"
      puts "あいこでした！次のあなたの選択は・・・"
    end
  end
end

loop{
puts"1.グー　2.チョキ　3.パー 4.終了"
player_chose = gets.to_i

case player_chose
  when 1
    stone = Ganken.new(1,rand(1..3))
    stone.p_chose_stone()
  when 2
    scissors = Ganken.new(2,rand(1..3))
    scissors.p_chose_scissors()
  when 3
    paper = Ganken.new(3,rand(1..3))
    paper.p_chose_paper()
  when 4
    break
end
}

