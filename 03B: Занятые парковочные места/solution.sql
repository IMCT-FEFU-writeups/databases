SELECT Cars.CarNumber,
       ParkingPlaces.ParkingNumber
  FROM CarsParkings
       JOIN
       Cars ON CarsParkings.CarID = Cars.ID
       JOIN
       ParkingPlaces ON CarsParkings.ParkingID = ParkingPlaces.ID;

