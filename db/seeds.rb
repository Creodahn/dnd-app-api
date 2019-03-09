Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  load seed
end

Dir[File.join(Rails.root, 'db', 'seeds/magic_items', '*.rb')].sort.each do |seed|
  load seed
end

Dir[File.join(Rails.root, 'db', 'seeds/races', '*.rb')].sort.each do |seed|
  load seed
end

Dir[File.join(Rails.root, 'db', 'seeds/treasure_rules/hoard', '*.rb')].sort.each do |seed|
  load seed
end

Dir[File.join(Rails.root, 'db', 'seeds/treasure_rules/individual', '*.rb')].sort.each do |seed|
  load seed
end