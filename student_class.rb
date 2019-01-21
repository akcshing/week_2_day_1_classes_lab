class Student

# attr_reader :name, :cohort

  def initialize(name, cohort, speech)
    @name = name
    @cohort = cohort
    @speech = speech
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

end
