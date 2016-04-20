# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


administrator = Administrator.create(
  firstname: "Ilda",
  lastname: "Bet",
  username: "ilda",
  email: "ildabet@hotmail.com",
  password: "12345"
)

16.times do
  product = Product.create(
    name: Faker::Lorem.sentence(3),
    description: Faker::Lorem.paragraph,
    publish: true,
    administrator: administrator
  )

  category = Category.create(
    name: Faker::Lorem.word
  )

  product_category = ProductCategory.create(
    product: product,
    category: category
  )

  detail = Detail.create(
    name: Faker::Lorem.word,
    metrics: Faker::Number.number(10)
  )

  product_detail = ProductDetail.create(
    product: product,
    detail: detail
  )

  picture = Picture.create(
    product: product,
    main:true,
    image: File.open(Dir.glob(File.join(Rails.root, 'fixtures', 'products', '*')).sample)
  )

  picture2 = Picture.create(
    product: product,
    main:false,
    image: File.open(Dir.glob(File.join(Rails.root, 'fixtures', 'products', '*')).sample)
  )

  visitor = Visitor.create(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.safe_email
  )

  message = Message.create(
    content: Faker::Lorem.paragraph,  
    visitor: visitor
  )
end