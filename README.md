## Practicing pair programming through the boris bikes project. ##

Objects  | Messages
------------- | -------------
Person  |
Bike  | condition (working?)
Docking Station | release_a_bike



                                condition
                    PERSON <--------------------|
                                                |  release_a_bike message
                                                |
                                                \/
                    BIKE <------------> DOCKING-STATION
                            release
                            condition

Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike