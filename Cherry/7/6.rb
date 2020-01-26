# ・クラスの継承
#   親クラス＝スーパークラス
#   子クラス＝サブクラス
#   継承するかどうかの判断 → 子クラスは親クラスの一種であるかどうか。

# ・標準ライブラリの継承関係
#   単一継承 → 継承できる親クラスは一つのみ（ただしRubyはミックスインという多重継承に似た機能も持っている）

# class User

# end
# user = User.new
# puts user.class


# ・継承

# class Product
#   attr_reader :name, :price

#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
# end
# product = Product.new('A great movie', 1000)
# puts product.name
# puts product.price

# class DVD < Product
#   # attr_reader :name, :priceは親クラスで定義すみなので不要
#   attr_reader :runnning_time

#   def initialize(name, price, runnning_time)
#     # @name = name
#     # @price = price 親クラスに定義済みなので、下記に書き換えられる
#     super(name, price)
#     @runnning_time = runnning_time
#   end
# end
# dvd = DVD.new('A great movie', 1000, 120)
# puts dvd.name
# puts dvd.price
# puts dvd.runnning_time


# ・メソッドのオーバーライド
#   子クラスでは親クラスと同名のメソッドを定義することで、スーパークラスの処理を上書きすることができる。
#   これをメソッドのオーバーライドと呼ぶ。

# class Product
#   attr_reader :name, :price

#   def initialize(name, price)
#     @name = name
#     @price = price
#   end

#   def to_s
#     "name: #{name}, price: #{price}"
#   end
# end
# product = Product.new('A great movie', 1000)

# class DVD < Product
#   # attr_reader :name, :priceは親クラスで定義すみなので不要
#   attr_reader :runnning_time

#   def initialize(name, price, runnning_time)
#     # @name = name
#     # @price = price 親クラスに定義済みなので、下記に書き換えられる
#     super(name, price)
#     @runnning_time = runnning_time
#   end
# end
# dvd = DVD.new('A great movie', 1000, 120)
# puts dvd.to_s


# ・クラスメソッドの継承
#   クラスを継承すると、クラスメソッドも継承される。

class Foo
  def self.hello
    'hello'
  end
end

class Bar < Foo
end

puts Foo.hello
puts Bar.hello
