require 'minitest/autorun'
require 'minitest/pride'

def well_formed?(string)
	# paren_count = 0
	# foreach char
	#   if char is open paren
	#      paren_count++
	#   if char is closing paren
	#      paren_count--
	#   if is closing brace and doesn't match last open brace
	#      return false
	#
	#   if any of the counts are non-zero
	#      return false
end

class WellFormednessTest < Minitest::Test
	def test_valid_case
		is_well_formed = well_formed?("({12}[34(56){67}])")
		assert is_well_formed
	end

	def test_unbalanced_brace_is_invalid
		is_well_formed = well_formed?("({12)")
		refute is_well_formed
	end

	def test_is_invalid_if_braces_closed_out_of_order
		is_well_formed = well_formed?("({12)}")
		refute is_well_formed
	end
end


__END__

Valid: "({12}[34(56){67}])"
Invalid "({12)"
Invalid "({12)}"