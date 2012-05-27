class Task
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  class << self
    def due(date)
      due_date = date.strftime("%d/%m/%Y")
      how_many = rand(11) + 1
      (1..how_many).map do |i|
        Task.new "##{i} task due #{due_date}"
      end
    end
  end
end
