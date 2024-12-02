require "minitest/autorun"

require_relative "list"
class ListTest < Minitest::Test
  def test_automatic_casting
    list = List.new %w(3 4 2 1 3 3)
    assert list.all?(&:integer?)
  end
end

require_relative "comparer"
class ComparerTest < Minitest::Test
  def setup
    @list_one  = List.new(3, 4, 2, 1, 3, 3)
    @list_two  = List.new(4, 3, 5, 3, 9, 3)
end

  def test_distances
    comparer  = Comparer.new @list_one, @list_two

    distances = comparer.distances

    assert_equal 2, distances[0]
    assert_equal 1, distances[1]
    assert_equal 0, distances[2]
    assert_equal 1, distances[3]
    assert_equal 2, distances[4]
    assert_equal 5, distances[5]
  end

  def test_similarities
    comparer = Comparer.new @list_one, @list_two

    similarities = comparer.similarities

    assert_equal 9, similarities[0]
    assert_equal 4, similarities[1]
    assert_equal 0, similarities[2]
    assert_equal 0, similarities[3]
    assert_equal 9, similarities[4]
    assert_equal 9, similarities[5]
  end
end
