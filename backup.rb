class WheelOfFortune
  attr_reader :theme, :guesses

  def initialize(params)
    @theme = params[:theme] || ""
    @phrase = params[:phrase] || ""
    @remaining_characters = remaining_characters
    @guesses = []
    @correct = []
    @phrase_as_arr = @phrase.split(//).map(&:downcase)
    @final_phrase = @phrase.split(//).map(&:downcase).join("").gsub(/[a-zA-Z]/, "_").split("")
    end

  def to_s
  
  if(remaining_characters.include? @guesses[-1])
    let_ind = @phrase_as_arr.find_index(@correct[-1])
    @final_phrase[let_ind] == @phrase[let_ind]
    remaining_characters[remaining_characters.find_index(@correct[-1])] = " "
   end
  
   @final_phrase = @final_phrase.join('')


  
    #   if  cor == letter
    #     index_to_r = @phrase.downcase.index(letter)
    #    @phrase_to_mess = @phrase_to_mess[index_to_r] ="_"
    #   end
    #   guesses.each do |guess|
    #   if letter == guess
    #     @phrase_to_mess = @phrase_to_mess.downcase.gsub("_", guess)
    #   end
    # if @phrase[0] != "_"
    #   @phrase[0] = @phrase[0].upcase
    # end
    # end
    # end
    # end


    
  end

  def can_i_have?(input)
    input = input.downcase
    in_phrase?(input)
  end

  def game_over?
    if @final_phrase.include?("_")
      false
    else
      true

   
    end
  end
end

def remaining_characters
   @phrase.downcase.delete("^a-z").split(//).uniq
end

def parse_phrase()
  
end

def in_phrase?(input)
    if  remaining_characters.include?(input)
      @guesses << input
      @correct << input
      true
    else 
      @guesses << input
      false
    end
end

# Checks to see if we executed this file from the command-line
# e.g. `ruby simple_jepordy.rb`
if __FILE__ == $0

  # DRIVER CODE
  j = WheelOfFortune.new( {theme: "card games", phrase: "Go fish"} )
  j.can_i_have?("g")
  j.can_i_have?("o")
  p j
  puts j # calls j.to_s

end
