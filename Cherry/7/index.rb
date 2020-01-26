# users = []
# users << { first_name: 'Alice', last_name: 'Ruby', age: 20}
# users << { first_name: 'Bob', last_name: 'Python', age: 30}

# #氏名を作成するメソッド
# def full_name(user)
#   "#{user[:first_name]} #{user[:last_name]}"
# end

# users.each do |user|
#   puts "氏名: #{full_name(user)}、年齢: #{user[:age]}"
# end

# puts users[0][:first_name] = 'Carol'

# 上記ではハッシュで管理するのが大変→クラスを作る

class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  # 氏名を作成するメソッド
  def full_name
    "#{first_name} #{last_name}"
  end
end

# ユーザーのデータを作成する
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

# ユーザーのデータを表示する
users.each do |user|
  puts "氏名: #{user.full_name}、 年齢: #{user.age}"
end

puts users[0].first_name
puts "--------------------------"
# クラスは内部にデータを保持し、そのデータを利用する独自のメソッドを持つ事ができる。　
# ・オブジェクト志向プログラミング関連の用語
# クラス、オブジェクト、インスタンス、レシーバ、メソッド、メッセージ、ステート、属性（アトリビュート、プロパティ）

# ・クラス
#   一種のデータ型「オブジェクトの設計図、雛形」などと呼ばれる。
#   Rubyではオブジェクトは何らかのクラスに属する。

# ・オブジェクト、インスタンス、レシーバ
#   同じクラスから作られたオブジェクトは同じ属性（データ項目）やメソッドを持つが、
#   属性の中に保持されるデータ（名前や数、色など）はオブジェクトによって異なる。


# alice = User.new('Alice', 'Ruby', 20)
# bob = User.new('Bob', 'Python', 30)

# puts alice.full_name
# puts bob.full_name

# インスタンス＝オブジェクト
# メソッドとの関係を説明するときは、オブジェクトのことをレシーバと呼ぶ事もある
# メソッドの受け手＝レシーバ

# ・ステート
# オブジェクト毎に保持されるデータのこと。例えば「信号機オブジェクトのステートは赤です」といったこと。
# # Userクラスの持つ「名前」や「年齢など」

# ・アトリビュート、プロパティ
# オブジェクト内の各データは外部から取得したり、変更したりできる場合がある。

class User
  # first_nameの読み書きを許可する
  attr_accessor :first_name

  # 氏名を作成するメソッド
  def full_name
    "#{first_name} #{last_name}"
  end
end
user = User.new('Alice', 'Ruby', 20)
puts user.first_name

puts "--------------------------"

