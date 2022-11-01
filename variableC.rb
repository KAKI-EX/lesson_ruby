class Introduction
  # インスタンス生成時に渡された名前と年齢をインスタンス変数に保存する
  def initialize(name, age)
    @name = name
    @age = age
  end

  def call_name
    puts "私の名前は#{@name}です。よろしくお願いします!"
  end

  def call_age
    puts "#{@age}歳です！"
  end
end

# Introductionクラスのインスタンスを生成しtaroという変数に代入
taro = Introduction.new("Taro",25)
taro.call_name()
taro.call_age()