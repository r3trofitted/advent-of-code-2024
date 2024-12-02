class Comparer
  def initialize(list_a, list_b)
    @list_a, @list_b = list_a, list_b
  end

  def distances
    @list_a
      .zip(@list_b)
      .map { |a, b| (a - b).abs }
  end
end
