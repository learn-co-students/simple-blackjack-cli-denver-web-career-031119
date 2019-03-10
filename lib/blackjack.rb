def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  card  = rand(1..11).floor()
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
  card1 = deal_card()
  card2 = deal_card()
  card_total = card1 + card2
  display_card_total(card_total)
end

def hit?
  prompt_user()
  choice = get_user_input()
   if choice == 's'
     end_game()
   elsif choice == 'h'
     deal_card()
   elsif choice != 's' && choice != 'h'
     invalid_command()
   end

end

def invalid_command
  puts "Sorry your command was invalid."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  initial_round()
  until card_total > 21
    hit?()
    display_card_total()
  end
  end_game()
end
