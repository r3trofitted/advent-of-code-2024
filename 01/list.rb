require "forwardable"

class List
  include Enumerable
  extend Forwardable

  def_delegator :@values, :each

  def self.import_both(data)
    data
      .readlines
      .map(&:split)
      .transpose
      .map { new _1 }
  end

  def initialize(*values_or_array_or_values)
    @values = Array(values_or_array_or_values).flatten.map(&:to_i).sort
  end
end
