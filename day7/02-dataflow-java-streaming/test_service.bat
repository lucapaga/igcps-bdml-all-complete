cd df-java-source

mvn compile exec:java ^
	-Dexec.mainClass=com.google.cloud.training.flights.FlightsMLService