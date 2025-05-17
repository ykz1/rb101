ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages["Spot"]
p ages.select { |k, _| k == "Spot" }
p ages.fetch("Spot", "Not found")
p ages.assoc("Spot")
p ages.has_key?("Spot")