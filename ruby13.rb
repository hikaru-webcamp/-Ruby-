#例外処理
# 想定どおり処理が進まなかったときやエラーが起きたときなど、例外的な処理を書く時に使う

# begin
#   例外が発生する可能性がある処理
# rescue => exception
#   例外が発生したときに実行する処理
# end

puts "金額を入力して下さい"
bill = gets.to_i
puts "割り勘する人数を入力して下さい"
number = gets.to_i

begin
  warikan = bill / number
  puts "１人あたり#{warikan}円です"
rescue ZeroDivisionError
  puts "0円では割り勘できません"
end


# メソッド内で例外処理を書く場合 beginとendを省略できる

def warikan(bill, number)
  warikan = bill / number
  puts "１人あたりの#{warikan}円です"
  rescue ZeroDivisionError
    puts "0円では割り勘できません"
end


#例外を発生させるメソッド raise

def type(age)
  if age < 0
    raise "年齢がマイナスです(#{agee}歳)"
  elsif age < 20
    "未成年"
  else
    "成年"
  end
end

age = ARGV.first.to_i
type = type(age)
puts "#{age}歳は、#{type}です"
