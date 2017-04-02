//Use this file to write queries.
let
    Source =PBIOdataExtension.Feed("http://services.odata.org/TripPinRESTierService/"),
    Airport =Source{[Name ="Airports"]}[Data],
    SelectColumns = Table.SelectColumns(Airport,{"Name","Location"})
in
    Source