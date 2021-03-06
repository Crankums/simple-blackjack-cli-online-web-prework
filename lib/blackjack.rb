def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
rand(1..11)
end

def display_card_total (card_total)
puts "Your cards add up to #{card_total}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum=deal_card+deal_card
  print display_card_total(sum)
  return sum
end

def hit?(cards)
  prompt_user
  input = get_user_input
    if input == "h"
      cards += deal_card
    elsif input == "s"
       cards
      else invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_num = initial_round
  until card_num >= 21
    card_num = hit?(card_num)
    display_card_total(card_num)
  end
end_game(card_num)
end
