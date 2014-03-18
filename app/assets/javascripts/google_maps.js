var wayPointsResponse;
var latlngcordinates = [];

function getWayPoints(){
  $.getJSON("/trips/" + tripId + "/stops", function(results){
    latlngcordinates = $.map(results, function(result, i){
      var latitude = result.place.latitude;
      var longitude = result.place.longitude;
      return {lat: latitude, lng: longitude};
    });
  });
}

