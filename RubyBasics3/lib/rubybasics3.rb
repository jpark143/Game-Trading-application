# Ruby Basics Part 3

class BookInStock
# YOUR CODE HERE
    attr_reader:isbn
    attr_accessor:price
    
    def isbn
        @isbn
    end
    
    def isbn=(isbn)
        @isbn=isbn
    end
    
    def price
        @price
    end
    
    def price=(price)
        @price=Float(price)
    end
    
    def initialize(isbn,price)
        raise ArgumentError if isbn.empty? || price <= 0
        @isbn=isbn
        @price=Float(price)
    end
    
    def price_as_string
        format("$%.2f", @price)
    end
end