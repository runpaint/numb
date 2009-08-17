# coding: utf-8
class Integer

  # An Achilles number is powerful but not a perfect power.
  #
  # Returns true if self is an Achilles number; false otherwise.
  #
  #     1152.achilles?  #=> true
  #     4563.achilles?  #=> true
  #     100.achilles?   #=> false
  #
  def achilles?
    powerful? and not perfect_power?
  end
end
