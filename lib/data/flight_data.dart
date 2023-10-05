
class FlightItem{
  final String source;
  final String sourceName;
  final String destination;
  final String destinationName;
  final String date;
  final String boardingTime;
  final String duration;
  final String flightNo;
  final String price;
  final String gate;
  final String seat;
  final String flightClass;
  FlightItem({required this.source, required this.sourceName, required this.destination, required this.destinationName, required this.date, required this.boardingTime, required this.duration, required this.flightNo, required this.price, required this.gate, required this.seat, required this.flightClass});

}

List<FlightItem>flightList=[
  FlightItem(source: "DBC", sourceName: "Dabaca", destination: "ADY", destinationName: "Almedy", date: "May 19", boardingTime: "08:35 AM", duration: "1h 35m", flightNo: "KB76", price: "170.00", gate: "B2", seat: "19A", flightClass: "Economy"),
  FlightItem(source: "ADY", sourceName: "Almedy", destination: "DBC", destinationName: "Dabaca", date: "May 23", boardingTime: "02:15 PM", duration: "1h 35m", flightNo: "HG12", price: "160.00", gate: "H2", seat: "33U", flightClass: "Economy"),
  FlightItem(source: "USA", sourceName: "United States", destination: "AUS", destinationName: "Australia", date: "June 9", boardingTime: "11:35 AM", duration: "11h 55m", flightNo: "DR76", price: "570.00", gate: "B6", seat: "18I", flightClass: "Economy"),
  FlightItem(source: "AUS", sourceName: "Australia", destination: "USA", destinationName: "United States", date: "July 25", boardingTime: "01:35 AM", duration: "12h 20m", flightNo: "KK76", price: "500.00", gate: "M2", seat: "44A", flightClass: "Economy"),
  FlightItem(source: "IND", sourceName: "India", destination: "USA", destinationName: "United States", date: "Aug 09", boardingTime: "07:35 PM", duration: "8h 45m", flightNo: "IB76", price: "340.00", gate: "R2", seat: "73A", flightClass: "Economy")

];