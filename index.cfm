<h1>Local api tester</h1>

<cfscript>
    timeResult="";
    cfhttp(url="http://localhost:62155/test/v1/lipsum/time", result="timeResult");

    if (isJSON(timeResult.Filecontent)) {
        result=deserializeJSON(timeResult.Filecontent).TIME;
    } else {
        result=timeResult.Filecontent;
    }

    writeOutput(result);
</cfscript>
