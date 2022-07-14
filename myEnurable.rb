module MyEnumerable
  def my_each
    for i in 0...length
      yield(self[i])
    end
  end
end
