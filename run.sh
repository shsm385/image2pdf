# hogehogeには変換したいファイルの巻数前まで記述
str=hogehoge
# str1=巻
str1=hoge

for ((i=$1; i<=$2; i++));do
	# 巻数なしならこっち
	# str3=$str$i
	# 巻数ありならこっちを使う
	str3=$str$i$str1

  s="cd $str3"
  $s
  s1="mogrify -format png *.jpg"
  $s1
  s2="cd ../"
  $s2
	script="ruby imagesTopdf.rb $str3 $3"
	$script
done
