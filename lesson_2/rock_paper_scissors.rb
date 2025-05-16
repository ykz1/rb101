=begin
1. welcome player to game, take their name
2. ask player to select a hand
3. compare versus the computer-generated hand and display results
4. ask if players want to play again

notes:
- put everything in methods
- validate all player entries
- make compare function adaptable to other rules

methods:
- take input
- validate RPS hand
- generate computer hand
- compare results
=end

GAME_CHOICES = {
  r: 'Rock',
  p: 'Paper',
  s: 'Scissors',
}

WIN_CONDITIONS = {
  r: [:s],
  p: [:r],
  s: [:p],
}

players = {
  npc: {
    name: 'Computer',
    choice: '',
    score: 0,
  },
  player: {
    name: '',
    choice: '',
    score: 0,
  },
}

def prompt(message)
  puts "=> #{message}"
end

def get_player_name
  prompt "What is your name?"
  player_name = gets.chomp
  prompt "Hello #{player_name}"
  player_name
end

def get_player_choice
  player_input = ''
  loop do
    prompt "What hand would you like to play?"
    player_input = gets.chomp.downcase
    return :r if player_input.start_with?('r')
    return :p if player_input.start_with?('p')
    return :s if player_input.start_with?('s')
    prompt "That's an invalid entry! Please enter (r)ock, (p)aper, or (s)cissors"
  end
end

def generate_choice
  GAME_CHOICES.keys.sample
end

def process_game_results(players)
  player_choice = players[:player][:choice]
  npc_choice = players[:npc][:choice]
  prompt "#{players[:player][:name]} played #{GAME_CHOICES[player_choice]}..."
  prompt "...#{players[:npc][:name]} played #{GAME_CHOICES[npc_choice]}!"
  winner = get_winner(player_choice, npc_choice)
  players[winner][:score] += 1 unless winner.nil?
  display_game_results(winner, players)
end

def get_winner(player_hand, npc_hand)
  return nil if player_hand == npc_hand
  return :player if WIN_CONDITIONS[player_hand].include?(npc_hand)
  return :npc
end

def display_game_results(winner, players)
  score_display = "
  #{players[:player][:name]}: #{players[:player][:score]}
  #{players[:npc][:name]}: #{players[:npc][:score]}"
  if winner.nil?
    prompt "Tied game! The score stands at #{score_display}"
  else
    prompt "#{players[winner][:name]} wins! The score is now #{score_display}"
  end
end

def get_encore_input
  prompt "Play again?"
  loop do
    user_input = gets.chomp.downcase[0]
    if user_input == 'y'
      prompt "Running it back..."
      return user_input
    elsif user_input == 'n'
      prompt "Thanks for playing!"
      return user_input
    else
      prompt "Invalid entry! Please enter (y)es or (n)o:"
    end
  end
end

# =========================
# Main program starts below

prompt "Welcome to Rock Paper Scissors!"
players[:player][:name] = get_player_name

loop do
  players[:player][:choice] = get_player_choice
  players[:npc][:choice] = generate_choice
  process_game_results(players)
  encore_input = get_encore_input
  break if encore_input == 'n'
end
