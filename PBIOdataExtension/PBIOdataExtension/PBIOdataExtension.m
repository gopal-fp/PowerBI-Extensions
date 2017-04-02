//Use this file to write extensions
let
    PBIOdataExtension.Feed = (url as text)=>
        let
            Source = OData.Feed(url) //url as input
        in
            Source,
    Resource = [
        Description = "PBIOdataExtension",
        Type = "Url",
        MakeResourcePath = (url) => url,
        ParseResourcePath = (url) => {url},
        TestConnection = (url) => {"PBIOdataExtension.Feed",url},
        Authentication = [
        Implicit=[]  //no authentication 
        ],
        Exports = [
        PBIOdataExtension.Feed =PBIOdataExtension.Feed
        ],
        ExportsUX = [
        PBIOdataExtension.Feed=[
            ButtonText ={"PBIOdataExtension.Feed","Connecting to OData endpoint"},
            SourceImage=Icons,
            SourceTypeImage=Icons]
            ],
        Label = "PBIOdataExtension",
        Icons = [
            Icon16 = { Extension.Contents("PBIOdataExtension16.png"), Extension.Contents("PBIOdataExtension20.png"), Extension.Contents("PBIOdataExtension24.png"), Extension.Contents("PBIOdataExtension32.png") },
            Icon32 = { Extension.Contents("PBIOdataExtension32.png"), Extension.Contents("PBIOdataExtension40.png"), Extension.Contents("PBIOdataExtension48.png"), Extension.Contents("PBIOdataExtension64.png") }
        ]
    ]
in
  Extension.Module("PBIOdataExtension", { Resource })
