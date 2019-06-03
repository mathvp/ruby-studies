class Phone
  def to_number(letter)
    nums_letters.each do |key, value|
      return key if value.include?(letter)
    end
    ' '
  end

  def to_phone_number(expression)
    phone_number = ''
    expression.each_char do |letter|
      phone_number << to_number(letter).to_s
    end
    phone_number
  end

  private

  def nums_letters
    { 0 => %w[0], 1 => %w[1],
      2 => %w[A B C],
      3 => %w[D E F],
      4 => %w[G H I],
      5 => %w[J K L],
      6 => %w[M N O],
      7 => %w[P Q R S],
      8 => %w[T U V],
      9 => %w[W X Y Z],
      '-' => %w[-] }
  end
end
