class Violations

  attr_reader :violation_date, :violation_type

  def initialize(row)
    @violation_date = row[:violation_date]
    @violation_type = row[:violation_type]
  end

end
