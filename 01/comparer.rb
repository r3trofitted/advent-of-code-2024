class Comparer
  def initialize(list_a, list_b)
    @list_a, @list_b = list_a, list_b
  end

  def distances
    @list_a
      .sort
      .zip(@list_b.sort)
      .map { |a, b| (a - b).abs }
  end

  def similarities
    @list_a.map { |i| i * @list_b.count(i) }
  end
end
