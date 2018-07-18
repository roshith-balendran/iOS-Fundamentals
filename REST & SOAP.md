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

