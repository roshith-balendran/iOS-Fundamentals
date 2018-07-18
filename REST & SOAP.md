# REST & SOAP

**REST** stands for **REpresentational State Transfer**. **REST** is a web standards based architecture and uses **HTTP Protocol** for data communication.

**REST Server** simply provides access to resources and the **REST client** accesses and presents the resources.
Here each resource is identified by URIs/ Global IDs. REST uses various representations to represent a resource like Text, JSON and XML.

**HTTP Methods used in REST**
The following HTTP methods are most commonly used in a REST based architecture.
* **GET** − Provides a read only access to a resource.  
* **PUT** − Used to create a new resource.  
* **DELETE** − Used to remove a resource.  
* **POST** − Used to update an existing resource or create a new resource.  
* **OPTIONS** − Used to get the supported operations on a resource.

### RESTFul Web Services
A web service is a collection of open protocols and standards used for exchanging data between applications or systems.
This interoperability between Java and Python, or Windows and Linux applications is due to the use of open standards.

* Web services based on REST Architecture are known as RESTful Web Services. 
* These web services use HTTP methods to implement the concept of REST architecture. 
* A RESTful web service usually defines a **URI (Uniform Resource Identifier)**, which is a service that provides resource representation such as **JSON** and a set of **HTTP Methods**.

### What is a Resource?
* REST architecture treats every content as a resource. 
* These resources can be Text Files, Html Pages, Images, Videos or Dynamic Business Data. 
* **REST Server** simply provides access to resources and **REST client** accesses and modifies the resources. 
* Each resource is identified by **URIs/Global IDs**. 

### Representation of Resources
Once a resource is identified then its representation is to be decided using a standard format so that the server can send the resource in the above said format and client can understand the same format.

Resource in XML format as follows:
```ruby
<user> 
    <id>1</id> 
    <name>Mahesh</name>
    <profession>Teacher</profession> 
</user> 
```
Resource in JSON format as follows:
```ruby
{ 
    "id":1, 
    "name":"Mahesh", 
    "profession":"Teacher" 
}
```

* RESTful Web Services make use of HTTP protocols as a medium of communication between client and server. 
* A client sends a message in form of a HTTP Request and the server responds in the form of an HTTP Response. 
* This technique is termed as Messaging. These messages contain message data and metadata.

### HTTP Request
An HTTP Request has five major parts −
* Verb − Indicates the HTTP methods such as GET, POST, DELETE, PUT, etc.
* URI − Uniform Resource Identifier (URI) to identify the resource on the server.
* HTTP Version − Indicates the HTTP version. For example, HTTP v1.1.
* Request Header − Contains metadata for the HTTP Request message as key-value pairs. For example, client (or browser) type, format supported by the client, format of the message body, cache settings, etc.
* Request Body − Message content or Resource representation.

### HTTP Response
An HTTP Response has four major parts −
* Status/Response Code − Indicates the Server status for the requested resource. For example, 404 means resource not found and 200 means response is ok.
* HTTP Version − Indicates the HTTP version. For example HTTP v1.1.
* Response Header − Contains metadata for the HTTP Response message as keyvalue pairs. For example, content length, content type, response date, server type, etc.
* Response Body − Response message content or Resource representation.

### Security
As RESTful Web Services work with HTTP URL Paths, it is very important to safeguard a RESTful Web Service in the same manner as a website is secured.

Following are the best practices to be adhered to while designing a RESTful Web Service −
* **Validation** − Validate all inputs on the server. Protect your server against SQL or NoSQL injection attacks.
* **Session Based Authentication** − Use session based authentication to authenticate a user whenever a request is made to a Web Service method.
* **No Sensitive Data in the URL** − Never use username, password or session token in a URL, these values should be passed to Web Service via the POST method.
* **Restriction on Method Execution** − Allow restricted use of methods like GET, POST and DELETE methods. The GET method should not be able to delete data.
* **Validate Malformed XML/JSON** − Check for well-formed input passed to a web service method.
* **Throw generic Error Messages** − A web service method should use HTTP error messages like 403 to show access forbidden, etc.

### HTTP Code & Description
* **200** : OK − shows success.
* **201** : CREATED − when a resource is successfully created using POST or PUT request. Returns link to the newly created resource using the location header.
* **204** : NO CONTENT − when response body is empty. For example, a DELETE request.
* **304** : NOT MODIFIED − used to reduce network bandwidth usage in case of conditional GET requests. Response body should be empty. Headers should have date, location, etc.
* **400** : BAD REQUEST − states that an invalid input is provided. For example, validation error, missing data.
* **401** : UNAUTHORIZED − states that user is using invalid or wrong authentication token.
* **403** : FORBIDDEN − states that the user is not having access to the method being used(Delete access without admin rights).
* **404** : NOT FOUND − states that the method is not available.
* **409** : CONFLICT − states conflict situation while executing the method(adding duplicate entry.
* **500** : INTERNAL SERVER ERROR − states that the server has thrown some exception while executing the method.
