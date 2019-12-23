<!DOCTYPE html>
<head>    
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    
        <script>
            L_NO_TOUCH = false;
            L_DISABLE_3D = false;
        </script>
    
    <script src="https://cdn.jsdelivr.net/npm/leaflet@1.4.0/dist/leaflet.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Leaflet.awesome-markers/2.0.2/leaflet.awesome-markers.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet@1.4.0/dist/leaflet.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Leaflet.awesome-markers/2.0.2/leaflet.awesome-markers.css"/>
    <link rel="stylesheet" href="https://rawcdn.githack.com/python-visualization/folium/master/folium/templates/leaflet.awesome.rotate.css"/>
    <style>html, body {width: 100%;height: 100%;margin: 0;padding: 0;}</style>
    <style>#map {position:absolute;top:0;bottom:0;right:0;left:0;}</style>
    
            <meta name="viewport" content="width=device-width,
                initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
            <style>
                #map_a3b65bfac0994222b9158deaff104065 {
                    position: relative;
                    width: 100.0%;
                    height: 100.0%;
                    left: 0.0%;
                    top: 0.0%;
                }
            </style>
        
</head>
<body>    
    
            <div class="folium-map" id="map_a3b65bfac0994222b9158deaff104065" ></div>
        
</body>
<script>    
    
            var map_a3b65bfac0994222b9158deaff104065 = L.map(
                "map_a3b65bfac0994222b9158deaff104065",
                {
                    center: [37.008447, 127.176367],
                    crs: L.CRS.EPSG3857,
                    zoom: 17,
                    zoomControl: true,
                    preferCanvas: false,
                }
            );

            

        
    
            var tile_layer_7869cf9aced3430fa230191ff43225d2 = L.tileLayer(
                "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                {"attribution": "Data by \u0026copy; \u003ca href=\"http://openstreetmap.org\"\u003eOpenStreetMap\u003c/a\u003e, under \u003ca href=\"http://www.openstreetmap.org/copyright\"\u003eODbL\u003c/a\u003e.", "detectRetina": false, "maxNativeZoom": 18, "maxZoom": 18, "minZoom": 0, "noWrap": false, "opacity": 1, "subdomains": "abc", "tms": false}
            ).addTo(map_a3b65bfac0994222b9158deaff104065);
        
    
          
    
            var marker_734d86d350784e878803d003157063de = L.marker(
                [37.008447, 127.176367],
                {}
            ).addTo(map_a3b65bfac0994222b9158deaff104065);
        
    
        var popup_15c33b96575c425f92abce34d1397d9b = L.popup({"maxWidth": "100%"});

        
            var html_3d428224fad74dfdaa139cb662d68613 = $(`<div id="html_3d428224fad74dfdaa139cb662d68613" style="width: 100.0%; height: 100.0%;"><i>Investing</i></div>`)[0];
            popup_15c33b96575c425f92abce34d1397d9b.setContent(html_3d428224fad74dfdaa139cb662d68613);
        

        marker_734d86d350784e878803d003157063de.bindPopup(popup_15c33b96575c425f92abce34d1397d9b)
        ;

        
    
    
            marker_734d86d350784e878803d003157063de.bindTooltip(
                `<div>
                    Investing
                 </div>`,
                {"sticky": true}
            );
        
</script>