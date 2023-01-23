# Question class to create questions (can be replaced by method in loop)
class Question
  attr_accessor :sum1, :sum2, :sum_total

  def initialize()
    @sum1 = rand(1...21)
    @sum2 = rand(1...21)
    @sum_total = sum1 + sum2
  end
end
