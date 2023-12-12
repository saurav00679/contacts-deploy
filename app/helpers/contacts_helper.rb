module ContactsHelper
  def self.get_combinations(value)
    return [] if value =~ /[1*0#]/

    char_mapping = {
      '2' => ["a", "b", "c"],
      '3' => ["d", "e", "f"],
      '4' => ["g", "h", "i"],
      '5' => ["j", "k", "l"],
      '6' => ["m", "n", "o"],
      '7' => ["p", "q", "r", "s"],
      '8' => ["t", "u", "v"],
      '9' => ["w", "x", "y", "z"]
    }

    combinations = char_mapping[value[0]]

    value[1..-1].each_char do |s|
      new_combinations = []

      combinations.each do |c|
        char_mapping[s].each do |e|
          new_combinations << c + e
        end
      end

      combinations = new_combinations
    end

    combinations
  end
end
