cd df-java-source

mvn compile exec:java ^
 -Dexec.mainClass=com.google.cloud.training.flights.AddRealtimePrediction ^
 -Dexec.args="--runner=DirectRunner --speedupFactor=60 --bucket=telemar-flights --project=telemar-formazione-master"