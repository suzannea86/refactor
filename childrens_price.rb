class ChildrensPrice
  def charge(days_rented)
    result = 1.5
    result += (days_rented - 3) * 1.5 if days_rented > 3
    result
  end

  def frequent_renter_points(days_rented)
    frequent_renter_points = 1
  end
end