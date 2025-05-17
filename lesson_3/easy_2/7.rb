flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones += ["Dino", "Hoppy"]
p flintstones

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(["Dino", "Hoppy"])
p flintstones

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino", "Hoppy")
p flintstones