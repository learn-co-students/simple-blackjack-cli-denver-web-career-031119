def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  (rand(1..11))# code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2

  display_card_total(sum)

  return sum
end

def hit?(card_sum)

    prompt_user
    input = get_user_input
    total_sum = card_sum
    next_card = deal_card

    if input == "h"
      total_sum += next_card
    elsif input == "s"
      return total_sum
    elsif input != "h" || input !="s"
      invalid_command
      hit?(total_sum)
    end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  welcome
  total = initial_round

  until total >= 21
    total += (hit?(total) - total)
    display_card_total(total)

  end

  end_game(total)


end
