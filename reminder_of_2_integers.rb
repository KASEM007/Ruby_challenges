=begin
    Write a method that return the decimal reminder of dividing two
    integers.
    - Use dec_reminder_of_two_floats as a helper method,but don't
    forget to pass the proper type of argument.
=end
def dec_remainder_of_two_float(f_dividend, f_divisor)
    f_quotient = f_dividend / f_divisor
    f_quotient - f_quotient.floor
end

def dec_remainder_of_two_integers(i_dividend, i_divisor)
    f_dividend = i_dividend.to_f
    f_divisor = i_divisor.to_f
    dec_remainder_of_two_float(f_dividend, f_divisor).round
end
puts dec_remainder_of_two_integers(8.0, 5.0)