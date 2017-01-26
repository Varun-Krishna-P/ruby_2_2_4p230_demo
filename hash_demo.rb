class HashDemo

    #creates a new hash
    
#    Hash[ key, value, ... ] → new_hash
    a = Hash[:a, 100, :b, 101]
    puts a
#    Hash[ [ [key, value], ... ] ] → new_hash
    a1 = Hash[[[:a, 100], [:b, 101]]]
    puts a1
#    Hash[ object ] → new_hash
    a2 = Hash["a" => 100, "b" => 101]
    puts a2
#    new → new_hash
    a3 = Hash.new("hello world")
    a3[:a] = "test"
    a3[:b] = "hello"
    puts a3
    puts a3.keys
    puts a3[:c]
    nested_hash = Hash.new{|hash, key| hash[key] = Hash.new}
    nested_hash[:a][:b] = 'testing nested hash'
    puts nested_hash
    fixtures_nested_hash = Hash.new{|hash, key| hash[key] = Hash.new(&hash.default_proc)}
    team = fixtures_nested_hash[:fixtures][:premier_league][:team]   
    chelsea = team[:chelsea]
    chelsea[:pl] = 22
    chelsea[:w] = 18
    chelsea[:d] = 1
    chelsea[:l] = 3
    chelsea[:f] = 47
    chelsea[:a] = 15
    chelsea[:gd] = 32
    chelsea[:pts] = 55
#    arsenal
    arsenal = team[:arsenal]
    arsenal[:pl] = 22
    arsenal[:w] = 14
    arsenal[:d] = 5
    arsenal[:l] = 3
    arsenal[:f] = 50
    arsenal[:a] = 23
    arsenal[:gd] = 27
    arsenal[:pts] = 47
    puts fixtures_nested_hash
end