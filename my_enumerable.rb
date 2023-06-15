module MyEnumerable
    def all?
      each { |e| return false unless yield e }
      true
    end
end