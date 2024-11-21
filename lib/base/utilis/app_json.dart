
List<Map<String, dynamic>> ticketList = [
  {
    'from': {
      'code':"NYC",
      'name':"New-York"
    },
    'to': {
      'code':"LDN",
      'name':"London"
    },
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time':"08:00 AM",
    "number":23
  },
  {
    'from': {
      'code':"DK",
      'name':"Dhaka"
    },
    'to': {
      'code':"SH",
      'name':"Shanghai"
    },
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time':"09:00 AM",
    "number":45
  },
  {
    'from': {
      'code':"UK",
      'name':"United Kingdom"
    },
    'to': {
      'code':"IND",
      'name':"India"
    },
    'flying_time': '8H 20M',
    'date': "06 JAN",
    'departure_time':"03:00 AM",
    "number":5
  },
  {
    'from': {
      'code':"SL",
      'name':"Sri Lankha"
    },
    'to': {
      'code':"SH",
      'name':"Shanghai"
    },
    'flying_time': '5H 20M',
    'date': "10 FEB",
    'departure_time':"01:00 PM",
    "number":85
  },
];
List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotelpic.jpg',
    'place': 'Open Space',
    'destination': 'London',
    'price': 2500
  },
  {
    'image': 'cityview.jpg',
    'place': 'Global Will',
    'destination': 'India',
    'price': 4200
  },
  {
    'image': 'poolview.jpg',
    'place': 'Best Pool',
    'destination': 'Dubai',
    'price': 6000
  },
];
class AppRoutes{

  static const homePage = "/";

  static const allTickets = "/all_tickets";

  static const ticketScreen = "/ticket_view";

  static const allHotels = "/all_hotels";

  static const hotelDetail = "/hotel_detail";

}