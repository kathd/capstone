names = ["thomas", "karen", "donna", "cami", "jeric"]

names.each do |name|
  user = User.create(
    username: name,
    email: "#{name}@gmail.com",
    password: "12345"
  )
  
  2.times do
    trip = Trip.create(
      user_id: user.id,
      trip_title: Faker::Address.city,
      longitude: Faker::Address.longitude,
      latitude: Faker::Address.latitude,
      start_date: Faker::Date.forward(5),
      end_date: Faker::Date.forward(15)
    )

    1.times do
      lodging = Lodging.create(
        trip_id: trip.id,
        lodging_name: "Some Hotel",
        checkin_date: trip.start_date,
        checkout_date: trip.end_date,
        price: Faker::Number.decimal(3, 2)
        )

      transportation = Transportation.create(
        trip_id: trip.id,
        transpo_type: "Car",
        depart_date: trip.start_date,
        arrive_date: trip.start_date,
        price: Faker::Number.decimal(3, 2)
        )

    end

    2.times do
      board = Board.create(
        trip_id: trip.id   
      )

      
      2.times do
        item = Item.create(
          board_id: board.id,
          item_type: "Activity",
          longitude: trip.longitude,
          latitude: trip.latitude,
          price: Faker::Number.decimal(2, 2)
        )

        item = Item.create(
          board_id: board.id,
          item_type: "Activity",
          longitude: trip.longitude,
          latitude: trip.latitude,
          price: Faker::Number.decimal(2, 2)
        )

      end
    end
  end
end