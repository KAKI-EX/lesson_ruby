 # ローカル変数を定義しています
 hello_local = "ローカル変数に文字列を格納しています"
 
 # グローバル変数を定義しています
 $hello_global = "グローバル変数に文字列を格納しています"
 
 # 別のファイルを読み込みます
 require_relative "variableB"
 
 puts "ローカル変数"
 puts hello_local
 
 puts "--------------------"
 
 puts "グローバル変数"
 puts $hello_global