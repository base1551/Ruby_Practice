# # ・selfキーワード
# # 省略可能

# class User
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def hello
#     # selfなしでnameメソッドを呼ぶ
#     "Hello! I am #{name}"
#   end

#   def hi
#     "Hi I am #{self.name}"
#   end

#   def my_name
#     "My name is #{@name}"
#   end
# end

# user = User.new('Alice')
# puts user.hello
# puts user.hi
# puts user.my_name


# ・クラスメソッドやクラス構文直下のself
# selfの場所によって「クラス自身」だったり「そのクラスのインスタンス自身」を表したりする。

# class Foo
#   puts "クラス構文の直下のself: #{self}"

#   def self.bar
#     puts "クラスメソッド内のself: #{self}"
#   end

#   def baz
#     puts "インスタンスメソッド内のself: #{self}"
#   end
# end

# Foo.bar
# foo = Foo.new
# foo.baz

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    formatted_price = self.class.format_price(price)
    "name: #{name}, price: #{formatted_price}"
  end
end

product = Product.new('A greate movie', 1000)
puts product.to_s
