def create_a_simples_hash(key, value)
  hash = Hash.new
  hash[key] = value
  return hash

  # { key => value }
end

def get_value_from_hash(hash, key)
  hash[key]
end

def get_value_from_hash_safely(hash, key)
  hash.fetch(key)
end

def set_value_in_hash(hash, key, value)
  hash[key] = value
end

def verify_if_key_exists(hash, key)
  hash.has_key?(key)
end

def delete_if_key_is(hash, key_to_be_removed)
  hash.delete_if { |key, value| key == key_to_be_removed }
end

def create_a_hash_with_default_value(default_value)
  Hash.new(default_value)
end