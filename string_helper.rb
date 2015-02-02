class StringHelper
  def is_permutation?(first_string, second_string)
  # fail('is_permutation not implemented')
  str1 = first_string.downcase.chars
  str2 = second_string.downcase.chars
  if str1.sort == str2.sort
  	return true
  else 
  	return false
  end
  end
end