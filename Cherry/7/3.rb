# ・クラス定義
# class User
# end

# class OrderItem
# end

# ・オブジェクトの作成
# User.new
# この時に呼ばれるのがinitializeメソッド。
# インスタンスを初期化するために実行したい処理があれば利用する。

# class User
#   def initialize
#     puts 'Initialize'
#   end
# end
# User.new
# puts "--"

# initializeは外部から呼び出す事ができない(デフォでprivateメソッドになっている)
# initializeメソッドに引数をつけると、newメソッドを呼ぶときにも引数が必要になる

# class User
#   def initialize(name, age)
#     puts "name: #{name}, age: #{age}"
#   end
# end
# # User.new
# User.new('Alice', 20)
# puts ""


# ・クラスメソッドの定義
# クラス内部でメソッドを定義すると、そのメソッドはインスタンスメソッドになる。
# インスタンスメソッドは「そのクラスのインスタンス」に対し呼び出す事ができる。

# class User
#   def hello
#     "Hello!"
#   end
# end
# user = User.new
# puts user.hello


# ・インスタンス変数とアクセサメソッド
# クラス内部ではインスタンス変数を使う事ができる。
# インスタンス変数とは同じインスタンスの内部で共有される変数。@で始まる。

# class User
#   def initialize(name)
#     # インスタンス作成時に渡された名前をインスタンス変数に保存する
#     @name = name
#   end

#   def hello
#     "Hello, I am #{@name}"
#   end
# end
# user = User.new('Alice')
# puts user.hello

# メッソドやブロックの内部で作成される変数をローカル変数という。
#   ローカル変数はメソッドやブロックの内部のみで有効。
#   呼び出されるたびに毎回作り直される。

# class User
#   def initialize(name)
#     @name = name
#   end

#   def hello
#     # shuffled_nameはローカル変数
#     shuffled_name = @name.chars.shuffle.join
#     "Hello, I am #{shuffled_name}."
#   end
# end
# user = User.new('Alice')
# puts user.hello


# class User
#   def initialize(name)
#     @name = name
#   end

#   # @nameを外部から参照するためのメソッド
#   def name
#     @name
#   end

#   # @nameを外部から変更するためのメソッド
#   def name=(value)
#     @name = value
#   end
# end
# user = User.new('Alice')
# # name=メソッドを呼び出している
# puts user.name = 'Bob'

# このようなインスタンス変数の値を読み書きするメソッドを「アクセサメソッド」と呼ぶ。
# これはattr_accessorメソッドで書き換えられる。

# class User
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
# end
# user = User.new('Alice')
# # name=メソッドを呼び出している
# puts user.name = 'Bob'


# ・クラスメソッドの定義
#   selfをメソッド名の前につける
#   ひとつひとつのインスタンスに含まれるデータは使わないメソッド
#   クラスメソッドを呼び出すときは、クラス名の直後に.をつけてメソッドを呼び出す。

class User
  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  def hello
    "Hello! I am #{@name}"
  end
end

names = ['Alice', 'Bob', 'Carol']
# クラスメソッド
users = User.create_users(names)
users.each do |user|
  puts user.
end
