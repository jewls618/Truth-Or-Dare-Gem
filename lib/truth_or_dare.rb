class TruthOrDare

  TRUTHS = [
    'Have you ever fallen in love?',
    'When was the last time you were happy?',
    'Have you ever been naked in public?',
    'What is your biggest fear in a relationship?',
    'What was your funniest first date ever?',
    'What is your weirdest habit?',
    'How many kids would you like to have?',
    'What is one embarrassing fact I should know about you?',
    'What was your childhood nickname?',
    'What is your favorite food?',
    'Would you ever consider being a nudist?',
    'What is your guilty pleasure?',
    'What is the most exotic food that you have ever eaten?',
    'What do you daydream about the most?',
    'What is the craziest thing that you have ever done while drunk?',
    'Have you ever been a stripper or done a personal strip tease?',
    'Have you ever had a threesome?',
    'Have you ever woken up to a stranger in your bed?',
    'What is the earliest you have ever started drinking in the day?',
    'What is the longest that you have ever been without taking a shower?',
    'Have you ever worn the same clothes for more than three days?',
    'Have you ever picked your nose when you thought no one was looking?',
  ]

  DARES = [
    'Fall in love',
    'Be Happy',
    'Be naked in public',
    'Call your mom',
    'Remove one shoe',
    'Tie the shoelaces together of the person next to you',
    'Scream MOIST as loud as you can',
    'Close your eyes and send a blind text to a random person',
    'Do an impression of your favorite celebrity',
    'Go grab a broom and do your best tango',
    'Give a 3 minute stand-up comedy routine',
    'Break dance...READY..SET..GO',
    'Make up a story about the item to your right',
    'Sing the alphabet without moving your mouth',
    'Do your best president impression',
    'Yell out the first word that comes to your mind right now',
    'Call the pizza place and order 10 sardine pizzas',
    'Pound on your chest and act like a gorilla for the next minute',
    'Sing everything you say for the next 10 minutes',
    'Go to the neighbour’s house and ask for a banana',
    'Go up to someone random and ask for a hug',
    'Set your cell phone language to Chinese for the next 10 minutes',
    'Sing “Twinkle Twinkle, Little Star” while beat boxing',
    'Give a concert with your air guitar',
    'Twerk for a minute',
    'Belly dance to a country song',
    'Make up a country song of the top of your head',
    'Write a social media post only using your toes',
    'Take a selfie in the bathroom and post it online',
    'Lick the wall',
    'Quack and walk like a duck',
    'Do your best evil laugh, as loud as you can'
  ]

  ANSWERS = [
    'Scandalous!',
    'Oh no you did NOT!',
    'Oh em gee',
    'ERMAHGERD',
    'NO FREAKIN WAY',
    "Don't worry, I'll never tell",
    "Your secret is safe with me",
    "I cannot believe you wrote that!",
    "I'm going to tell your mom you said that!"
  ]

  def play
    print_welcome
    get_user_choice
    if valid_user_input?
      get_challenge
    else
      print_bad_input_message
      play
    end
  end

  private
  attr_reader :initial_choice

  def print_welcome
    print "Pick Truth or Dare (t/d): "
  end

  def print_bad_input_message
    print "Sorry, #{initial_choice} is not a valid choice. "
  end

  def get_user_choice
    @initial_choice = gets.chomp.downcase.strip
  end

  def valid_user_input?
    initial_choice == 't' ||
    initial_choice == 'd'
  end

  def get_challenge
    case initial_choice
    when 't'
      puts TRUTHS.sample
      truth = gets.chomp
      puts ANSWERS.sample
    when 'd'
      puts DARES.sample
    end
  end
end

TruthOrDare.new.play
