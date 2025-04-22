Create DataBase LagosRide;
use LagosRide;

Create Table Drivers(
DriverID    Int 	NOT NULL auto_increment,
Driver_Name varchar(40) NOT NULL,
Rating decimal NOT NULL,
TotalRides Int NOT NULL,
PRIMARY KEY (DriverID)
);

Create Table Riders(
RiderID Int NOT NULL auto_increment,
RideName varChar(40) NOT NULL,
City varChar(40) NOT NULL,
primary key (RiderID)
);

Create Table Rides(
RideID Int NOT NULL auto_increment,
DriverID Int NOT NULL,
RiderID Int NOT NULL,
Fare Int NOT NULL,
Rating decimal NOT NULL,
DistanceKM decimal NOT NULL,
primary key(RideID),
foreign key(DriverID) references Drivers(DriverID), 
foreign key(RiderID) references Riders(RiderID)                          
);

Create table Payments (
PaymentID Int NOT NULL auto_increment,
RideID Int NOT NULL,
Amount decimal NOT NULL,
PaymentMethod varchar(40) NOT NULL,
primary key(PaymentID),
foreign key(RideID) references Rides(RideID)   

)