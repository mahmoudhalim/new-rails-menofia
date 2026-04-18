# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# 1. Create Users
alice = User.create!(name: "Alice")
bob = User.create!(name: "Bob")
carol = User.create!(name: "Carol")

# 2. Create Posts (Alice is the creator)
post1 = Post.create!(title: "First Post", content: "Hello World", creator: alice)
post2 = Post.create!(title: "Second Post", content: "Rails is great", creator: bob)

# 3. Assign Editors (Bob and Carol edit Alice's post)
PostEditor.create!(post: post1, editor: bob)
PostEditor.create!(post: post1, editor: carol)
