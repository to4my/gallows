class Game
  TOTAL_ERRORS_ALLOWED = 7

  def initialize(word)
    @letters = word.chars
    @user_guesses = []
  end
# здесь нормализуем, чтобы из ошибок исключить
  def errors
    return @user_guesses - normalized_letters(@letters)
  end

  def errors_made
    return errors.length
  end

  def errors_allowed
    return TOTAL_ERRORS_ALLOWED - errors_made
  end
# собсно нормализатор по буквам (с маленькими не работает, т.к. на
# входе UPCASE обрабатывает и превращает все в верхний регистр)
  def normalize_letter(letter)
    if letter == "Ё"
      letter = "Е"
    elsif letter == "Й"
      letter = "И"
    else
      letter
    end
  end
# нормализуем массив букв
  def normalized_letters(array)
    @letters = array.map { |letter| normalize_letter(letter)  }
  end
# с учетом нормализации  -  добавляем наш метод побуквенный
  def letters_to_guess
    result =
      @letters.map do |letter|
        if @user_guesses.include?(normalize_letter(letter))
          normalize_letter(letter)
        else
          nil
        end
      end

    return result
  end

  def lost?
    return errors_allowed == 0
  end

  def over?
    return won? || lost?
  end

  def play!(letter)
    if !over? && !@user_guesses.include?(letter)
      @user_guesses << letter
    end
  end

  def won?
    return (@letters - @user_guesses).empty?
  end

  def word
    return @letters.join
  end
end
