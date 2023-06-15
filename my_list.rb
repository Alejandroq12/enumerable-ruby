require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each
    @list.each do |element|
      yield element if block_given?
    end
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 }) # true
puts(list.all? { |e| e > 5 }) # false
puts(list.any? { |e| e == 2 }) # true
puts(list.any? { |e| e == 5 }) # false
p(list.filter(&:even?)) # [2, 4]
