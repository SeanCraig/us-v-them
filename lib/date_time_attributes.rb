class DateTimeAttributes

  def initialize(params, name)
    @params = params
    @name = name
  end

  def attributes
    (1..5).map { |i| "#{name}(#{i}i)" }
  end

  def values
    attributes.map { |a| params.fetch(a) }
  end

  def time
    Time.new(*values)
  end

  def converted
    params.except(*attributes).merge(name => time)
  end

  private

  attr_reader :params, :name
end
