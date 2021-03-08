# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Load.destroy_all
Direction.destroy_all
Comment.destroy_all

User.create(username: "Sstump", truck_number: 10, password: "password")
User.create(username: "Tlee", truck_number: 8, password: "password")

Load.create(customer_name: "Munch Supply", city: "New Lenox", state: "Il", user_id: 1)
Load.create(customer_name: "Robertson Supply", city: "Alliance", state: "OH", user_id: 1)

Load.create(customer_name: "Ferguson Supply", city: "Lakewood", state: "NJ", user_id: 2)
Load.create(customer_name: "Best Choice Supply", city: "Lexington", state: "KY", user_id: 2)

Direction.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis 
    nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.", load_id: 1)

Direction.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis 
    nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.", load_id: 2)

Direction.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis 
    nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.", load_id: 3)

Direction.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis 
    nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.", load_id: 4)

Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua.", user_id: 1, direction_id: 1)

Comment.create(content: "Comment 2 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua.", user_id: 1, direction_id: 1)

Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua.", user_id: 1, direction_id: 2)

Comment.create(content: "Comment 2 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua.", user_id: 1, direction_id: 2)

Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua.", user_id: 2, direction_id: 3)

Comment.create(content: "Comment 2 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua.", user_id: 2, direction_id: 3)

Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua.", user_id: 2, direction_id: 4)

Comment.create(content: "Comment 2 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua.", user_id: 2, direction_id: 4)