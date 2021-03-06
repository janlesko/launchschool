class School
  def initialize
    @list = Hash.new([])
  end

  def add(name, grade)
    @list[grade] += [name]
  end

  def grade(number)
    @list[number]
  end

  def to_h
    @list.sort.map { |grade, names| [grade, names.sort] }.to_h
  end
end
