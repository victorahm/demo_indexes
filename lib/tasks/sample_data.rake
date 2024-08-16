require "faker"

namespace :tmp do
  desc "Load sample data"
  task load_sample_data: :environment do
    number = ENV["NUMBER"].to_i || 2_000_000
    batches = number / 10_000
    batches.times do |i|
      User.transaction do
        10_000.times do |j|
          login = Faker::Internet.unique.username
          User.create(
            full_name: Faker::Name.name,
            username: login,
            login: login,
            email: Faker::Internet.unique.email
          )
        end
      end
    puts "Batch #{i + 1} of #{batches} created"
    end
  end
end
