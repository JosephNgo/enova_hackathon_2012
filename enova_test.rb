require 'open-uri'
require 'json'
require 'ap'
require 'net/http'
require 'ruby-poker'
require 'uri'

# get_key='aa8b9c04-8171-49bc-b31a-72692f0bbecc'
# 	status_api = open("http://no-limit-code-em.com/api/players/#{get_key}").read
# 	poker_array= JSON.parse(status_api)






def game_state(key)
	status_api = open("http://no-limit-code-em.com/sandbox/players/#{key}").read
	phase= JSON.parse(status_api)
	#phase[]#[0][0]#["betting_phase"]

	#hand1 = PokerHand.new(phase["hand"])
	#hand = phase["hand"]

	ap phase["maximum_b
end

#sandbox test key
get_key ='fc2455f8-1879-4ad4-8012-1f337c2869f2'





# uri = URI("http://no-limit-code-em.com/sandbox/players/#{get_key}/action")
# res = Net::HTTP.post_form(uri, 'action_name' => 'bet', 'amount' => '25')
# puts res


game_state(get_key)