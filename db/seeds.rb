# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# could be in your create method
# vid1 = Video.create(...)
# Categorization.create(video_id: vid1.id, category_id: cat1.id)
# Categorization.create(video_id: vid1.id, category_id: cat2.id)
# Categorization.create(video_id: vid1.id, category_id: cat3.id)

# initial seeds
vid1 = Video.create(title: "High Precision Entity Alignment", description: "Align minecarts, boats, etc. to any coordinate with any precision you want! In the past finding a way to get a specific required alignment reliably was hard or impossible, but with this new method getting any alignment is possible.", upload_date: "9/1/2022", url: "https://www.youtube.com/watch?v=Vmhlij-jmZ4&list=PLrOh8OT6caIlcpvGygTQMixdB9pxIDXND&index=2&t=468s", rating: 9, familiarity: "Advanced", video_type: "Primer, Tutorial")
vid2 = Video.create(title: "Easy Deepslate Mining using a Wither", description: "i punch a wither for 4 minutes", upload_date: "8/23/2022", url: "https://www.youtube.com/watch?v=loN94sUn320&list=PLrOh8OT6caIlcpvGygTQMixdB9pxIDXND&index=3", rating: 7, familiarity: "Intermediate", video_type: "Tutorial")

cat1 = Cat.create(name: "Primer")
cat2 = Cat.create(name: "Tutorial")
cat3 = Cat.create(name: "Story Mode")
cat4 = Cat.create(name: "Multiplayer")
cat5 = Cat.create(name: "Beginner")
cat6 = Cat.create(name: "Intermediate")
cat7 = Cat.create(name: "Advanced")
cat8 = Cat.create(name: "Computational")