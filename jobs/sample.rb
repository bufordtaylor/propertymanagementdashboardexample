current_valuation = 0
current_karma = 0

SCHEDULER.every '2s' do
  last_valuation = current_valuation
  last_karma     = current_karma
  current_valuation = rand(100)
  current_karma     = rand(200000)

  send_event('valuation', { current: current_valuation, last: last_valuation })
  send_event('karma', { current: current_karma, last: last_karma })
  send_event('synergy',   { value: rand(100) })
  send_event('gross_yield',   { current: 5, last: 4.8 })
  send_event('net_yield',   { current: 4.6, last: 4.5 })
  send_event('rental_due',   { current: rand(100), last: rand(100) })
end
