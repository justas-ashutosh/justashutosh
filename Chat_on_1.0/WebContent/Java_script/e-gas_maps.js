/*****************Google map*******************/
      function initialize(lat,lng) {
    	  
    	    //document.writeln(lat);
    		//document.writeln(lng);
    		
    	  var map = new google.maps.Map(document.getElementById('map'), {
    	      zoom: 13,
    	      center: new google.maps.LatLng(lat,lng),
    	      mapTypeId: google.maps.MapTypeId.ROADMAP
    	    });
    	  
      var locations = [
          ['S1', lat,lng, 4],
          ['AKM LPG Dealers', lat+0.003456,lng+0.002345, 5],
          ['Mishra LPG Dealers', lat+0.006543,lng+0.005432, 3],
          ['Shiv lpg and domestic Dealers', lat+0.001234,lng+0.003456, 2],
          ['AKM Indin --an initiative of Government of India', lat+0.004321,lng+0.006543, 1]
        ];
      
      var infowindow = new google.maps.InfoWindow();

      var marker, i;
      
      for (i = 1; i <=locations.length; i++) {  
          marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations[i][1], locations[i][2]),
            map: map
          });

          google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
              infowindow.setContent(locations[i][0]);
              infowindow.open(map, marker);
            }
          })(marker, i));
        }
      }