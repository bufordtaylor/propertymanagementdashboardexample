buzzwords = ['Management Fees', 'Inventory', 'Council Tax', 'EPC', 'Cleaning', 'Repairs', 'Keys'] 
buzzword_counts = Hash.new({ value: 0 })

buzzword_counts["Management Fees"] = { label: "Management Fees", value: 100 }
buzzword_counts["Council Tax"] = { label: "Council Tax", value: 120 }
buzzword_counts["EPC"] = { label: "EPC", value: 80 }
buzzword_counts["Cleaning"] = { label: "Cleaning", value: 70 }

SCHEDULER.every '2s' do
  random_buzzword = buzzwords.sample
  

  send_event('buzzwords', { items: buzzword_counts.values })
end
