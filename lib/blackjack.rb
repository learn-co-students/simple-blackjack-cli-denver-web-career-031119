def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  cards = deal_card + deal_card
  display_card_total(cards)
  return cards
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  until input == 'h' || input == 's'
    invalid_command
    prompt_user
    input = get_user_input
  end
  if input == 'h'
    card_total += deal_card
  elsif input == 's'
    card_total
  end
end
# def welcome
#   puts 'Welcome to the Blackjack Table'
# end
#
# def deal_card
#   rand(1..11)
# end
#
# def display_card_total(card_total)
#   puts "Your cards add up to #{card_total}"
# end
#
# def prompt_user
#   puts "Type 'h' to hit or 's' to stay"
# end
#
# def get_user_input
#   return gets.chomp
# end
#
# def end_game(card_total)
#   puts "Sorry, you hit #{card_total}. Thanks for playing!"
# end
#
# def initial_round
#   card_total = deal_card + deal_card
#   display_card_total(card_total)
#   return first_round
# end
#
# def hit?
#   prompt_user()
#   choice = get_user_input()
#    if get_user_input() == 's'
#      end_game()
#    elsif get_user_input() == 'h'
#      deal_card()
#    elsif get_user_input() != 's' && get_user_input() != 'h'
#      invalid_command()
#    end
#
# end
#
# def invalid_command
#   puts "Sorry your command was invalid."
# end
#
# #####################################################
# # get every test to pass before coding runner below #
# #####################################################
#
def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
