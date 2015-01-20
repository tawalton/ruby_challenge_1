require_relative '../test_helper'
require_relative '../string_helper'

class TestStringHelper < MiniTest::Unit::TestCase
  def setup
    @string_helper = StringHelper.new
  end

  def test_strings_are_permutation
    fail_message = 'is_permutation? is returning false but it should be true'
    perm1 = 'cat'
    perm2 = 'atc'
    perm3 = 'tac'
    perm4 = 'cta'

    assert @string_helper.is_permutation?(perm1, perm2), fail_message
    assert @string_helper.is_permutation?(perm3, perm4), fail_message
  end

  def test_strings_are_not_permutation
    fail_message = 'is_permutation? is returning true but it should be false'
    perm1 = 'cat'
    perm2 = 'cad'
    perm3 = 'will'
    perm4 = 'willie'

    assert !(@string_helper.is_permutation?(perm1, perm2)), fail_message
    assert !(@string_helper.is_permutation?(perm3, perm4)), fail_message
  end
end
