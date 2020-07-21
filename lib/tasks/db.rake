namespace :db do
  desc "reset database to a clean state"
  task recycle: :environment do
    puts "dropping db..."
    Rake::Task["db:drop"].invoke
    puts "recreating db..."
    Rake::Task["db:create"].invoke
    puts "running migrations..."
    Rake::Task["db:migrate"].invoke
    puts "seeding db..."
    Rake::Task["db:seed"].invoke
    puts "done"
  end

end