#Danny Yu, dyu6@binghamton.edu

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if (isbn.length == 0) || (price <= 0)
      raise ArgumentError.new("ISBN must be nonempty or price must be greater than 0")
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    formatted_price = sprintf("%#.2f", @price)
    return "$#{formatted_price}"
  end
end

#book = BookInStock.new("123456",5)
#puts book.price_as_string
#puts book.price
#book2 = BookInStock.new("", 5)
#book3 = BookInStock.new("123456", -4)
#book4 = BookInStock.new("123456",6.0)
#puts book4.price_as_string
#book5 = BookInStock.new("123456", 7.00)
#puts book5.price_as_string