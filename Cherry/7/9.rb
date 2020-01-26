# ・様々な種類の変数
#   クラスインスタンス変数
#   クラス変数
#   グローバル変数
#   特殊変数

# ・クラスインスタンス変数
#   インスタンス変数はクラスをインスタンス化した際に、オブジェクトごとに管理される。
#   一方、クラスインスタンス変数はインスタンス変数とは無関係にクラス自身が保持しているデータ。

class Product
  # クラスインスタンス変数
  @name = 'Product'

  def self.name
    # クラスインスタンス変数
    @name
  end

  def initialize(name)
    # インスタンス変数
    @name = name
  end

  def name
    # インスタンス変数
    @name
  end
end

class DVD < Product
  # クラスインスタンス変数
  @name = 'DVD'

  def self.name
    # クラスインスタンス変数
    @name
  end

  def upcase_name
    # インスタンス変数を参照
    @name.upcase
  end
end

puts Product.name
puts DVD.name

product = Product.new('A great movie')
puts product.name

dvd = DVD.new('An awesome film')
puts dvd.name
puts dvd.upcase_name
