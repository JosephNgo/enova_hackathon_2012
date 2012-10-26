require 'open-uri'
require 'json'
require 'ap'
require 'net/http'
require 'ruby-poker'


	#dummy sandbox key: get_key='fc2455f8-1879-4ad4-8012-1f337c2869f2'
	#get_key='aa8b9c04-8171-49bc-b31a-72692f0bbecc' #10PM test run key
	get_key='09bb95c0-835b-4a5e-8d03-8542fcb7f65a'  #11pm test run key
	status_api = open("http://no-limit-code-em.com/api/players/#{get_key}").read
	poker_array= JSON.parse(status_api)

def forever_fold(get_key, status_api, poker_array)
	get_key='09bb95c0-835b-4a5e-8d03-8542fcb7f65a'  #11pm test run key
	status_api = open("http://no-limit-code-em.com/api/players/#{get_key}").read
	poker_array= JSON.parse(status_api)
	

while true
	get_key='09bb95c0-835b-4a5e-8d03-8542fcb7f65a'  #11pm test run key
	status_api = open("http://no-limit-code-em.com/api/players/#{get_key}").read
	poker_array= JSON.parse(status_api)
sleep 1

def my_turn(poker_array)

	if poker_array["your_turn"] == true
		return true
	else
		return false
	end
end

turn_check = my_turn(poker_array)

def hand_check(pull_hand, turn_check)
	if turn_check == true
		hand1 = PokerHand.new(pull_hand["hand"])
		min_hand = PokerHand.new(['5S', '8S', '5H', '7H', 'JS']) #one pair min to bet

		if hand1 >= min_hand 
			return true
		else
			return false	
		end
	end
end

hc_value = hand_check(poker_array, turn_check)

get_key='09bb95c0-835b-4a5e-8d03-8542fcb7f65a'  #11pm test run key
	status_api = open("http://no-limit-code-em.com/api/players/#{get_key}").read
	poker_array= JSON.parse(status_api)


def betting_phase(pull_phase, value, get_key)

	min_bet = pull_phase["minimum_bet"].to_i+30
	max_bet = pull_phase["maximum_bet"]

	hand_status = pull_phase["betting_phase"]
	 puts hand_status
	 uri = URI("http://no-limit-code-em.com/api/players/#{get_key}/action")





	 if value == true 
	 	if hand_status == "deal" || hand_status == "post_draw" 
			res = Net::HTTP.post_form(uri, 'action_name' => 'bet', 'amount' => min_bet)
			puts "you bet #{min_bet} hand: }! "
		elsif hand_status == "showdown"
			res = Net::HTTP.post_form(uri, 'action_name' => 'bet', 'amount' => max_bet)
			puts "you bet it all! hand: }"
		else hand_status == "draw"
			res = Net::HTTP.post_form(uri, 'action_name' => 'draw', 'amount' => min_bet)
			puts "no draw :( hand: }"
	 	end
	 else
	 	res = Net::HTTP.post_form(uri, 'action_name' => 'bet', 'amount' => min_bet)
		puts "i fold :( hand: "
	 end
	
end

puts betting_phase(poker_array, hc_value, get_key)
puts poker_array["hand"]
#sandbox test key

#betting_phase(key)
end

end

forever_fold(get_key, status_api, poker_array)
get_key='09bb95c0-835b-4a5e-8d03-8542fcb7f65a'  #11pm test run key
	status_api = open("http://no-limit-code-em.com/api/players/#{get_key}").read
	poker_array= JSON.parse(status_api)