# get_season(date)
# Helper function to return the season of a date
get_season = function(date){
  if (month(date) <= 2 | (month(date) <= 3 & day(date) <= 19)) {
    return("Winter")
  } else if (month(date) <= 5 | (month(date) <= 6 & day(date) <= 20)) {
    return("Spring")
  } else if (month(date) <= 8 | (month(date) <= 9 & day(date) <= 21)) {
    return("Summer")
  } else if (month(date) <= 11 | (month(date) <= 12 & day(date) <= 20)) {
    return("Autumn")
  } else {
    return("Winter")
  }
}
