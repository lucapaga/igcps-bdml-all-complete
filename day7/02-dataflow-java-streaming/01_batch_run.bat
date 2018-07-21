cd df-java-source

set BUCKET=telemar-formazione-master-day7
set PROJECT=telemar-formazione-master

mvn compile exec:java -e ^
	-Dexec.mainClass=com.google.cloud.training.flights.AddRealtimePrediction ^
 	-Dexec.args="--runner=DirectRunner --speedupFactor=60 --bucket=%BUCKET% --project=%PROJECT%"