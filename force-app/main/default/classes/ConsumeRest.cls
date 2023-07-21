public class ConsumeRest {
    @future(callout=true)
    public static void getRestData() {
       Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
		request.setMethod('POST');
		request.setHeader('Content-Type', 'application/json');
		// Set the body as a JSON object
		request.setBody('{"name":"Tiger Abhi Zinda Hai"}');
		HttpResponse response = http.send(request);
		// Parse the JSON response
		if(response.getStatusCode() != 201) {
    		System.debug('The status code returned was not expected: ' + response.getStatusCode() + ' ' + response.getStatus());
		} else {
    		System.debug(response.getBody());
	}
 }
}