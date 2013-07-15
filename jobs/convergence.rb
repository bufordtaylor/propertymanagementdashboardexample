# Populate the graph with some random points
points = []
(1..12).each do |i|
  points << { x: i, y: rand(50) }
end
last_x = points.last[:x]

count = 0

data = [ { x: 1347621705, y: 1255 }, { x: 1350251445, y: 1267 }, { x: 1352881185, y: 1275 }, { x: 1355510925, y: 1270 }, { x: 1358140665, y: 1279 }, { x: 1360770405, y: 1279 }, { x: 1363400145, y: 1290 }, { x: 1366029885, y: 1286 }, { x: 1368659625, y: 1292 }, { x: 1371289365, y: 1280 }  ]

SCHEDULER.every '1s' do
  last_x += 1
  count += 1
  points << { x: data[count][:x], y: rand(50) }

  send_event('convergence', points: data)
end
