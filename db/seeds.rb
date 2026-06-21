# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

PostEditor.destroy_all
Post.destroy_all
User.destroy_all

user_one = User.create!(name: "Ahmed", dob: "1995-01-01", email: "ahmed@test.com", phone_number: "01000000000")
user_two = User.create!(name: "Omar", dob: "1998-05-05", email: "omar@test.com", phone_number: "01111111111")

post_one = Post.create!(title: "First Post", content: "This is my first post", creator_id: user_one.id)
post_two = Post.create!(title: "Second Post", content: "Rails", creator_id: user_two.id)

PostEditor.create!(post_id: post_one.id, editor_id: user_two.id)
PostEditor.create!(post_id: post_two.id, editor_id: user_one.id)

puts "Database seeded successfully"