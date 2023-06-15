class MyList
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
puts list
