require './regular_price.rb'
require './new_release_price.rb'
require './childrens_price.rb'

class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2

  attr_reader :title, :price_code
  
  def price_code=(value)
    @price_code = value
    @price = case price_code
      when REGULAR
       RegularPrice.new
      when NEW_RELEASE
       NewReleasePrice.new
      when CHILDRENS
       ChildrensPrice.new
    end
  end

  def initialize(title, price_code)
    @title = title
    self.price_code = price_code
  end

  def charge(days_rented)
    @price.charge(days_rented)
  end

  def frequent_renter_points(days_rented)
    @price.frequent_renter_points(days_rented)
  end
end