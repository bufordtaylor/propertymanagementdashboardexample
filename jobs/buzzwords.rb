#!/bin/env ruby
# encoding: utf-8

buzzwords = ['Management Fees', 'Inventory', 'Council Tax', 'EPC', 'Cleaning', 'Repairs', 'Keys']
buzzword_counts = Hash.new({ value: 0 })

buzzword_counts["Management Fees"] = { label: "Management Fees", value: "£65" }
buzzword_counts["Repairs"] = { label: "Repairs", value: "£225" }
buzzword_counts["Dishwasher"] = { label: "Dishwasher", value: "£194" }

SCHEDULER.every '2s' do
  random_buzzword = buzzwords.sample


  send_event('buzzwords', { items: buzzword_counts.values })
end
