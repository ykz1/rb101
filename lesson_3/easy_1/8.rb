flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

arr = flintstones.select { |k, _| k == 'Barney' }
arr = arr.to_a.flatten
p arr

arr2 = flintstones.assoc('Barney')
p arr2