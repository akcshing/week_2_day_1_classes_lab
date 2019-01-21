class Student

# attr_reader :name, :cohort

  def initialize(name, cohort, speech, fav_lang)
    @name = name
    @cohort = cohort
    @speech = speech
    @fav_lang = fav_lang
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

  def get_speech
    return @speech
  end

  def fav_language
    return "#{@name}'s favourite programming language is #{@fav_lang}!"
  end

end
