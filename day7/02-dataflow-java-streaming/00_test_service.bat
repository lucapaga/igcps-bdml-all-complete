cd df-java-source

mvn compile exec:java ^
	-Dexec.mainClass=it.injenia.formazione.gcp.dataplatform.dataflow.school.FlightsMLService