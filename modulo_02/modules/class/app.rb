require_relative 'payment'

include Payment

p = Payment::Visa.new
puts p.paying