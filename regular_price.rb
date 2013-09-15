class RegularPrice
  def charge(days_rented)
    result = 2
    result += (days_rented -2) * 1.5 if days_rented > 2
    result
  end

  def frequent_renter_points(days_rented)
    frequent_renter_points = 1
  end
end