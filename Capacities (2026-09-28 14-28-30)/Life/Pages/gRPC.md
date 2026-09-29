---
type: 'Page'
collections: 'Vanderlande'
title: gRPC
aliases: null
description: null
icon: null
createdAt: '2024-09-16T07:46:24.856Z'
lastUpdated: '2024-09-17T05:03:04.801Z'
tags: []
coverImage: null
---

# gRPC

### 1. **Define Your Service**

First, you need to define your service and the messages it uses in a `.proto` file using Protocol Buffers (Protobuf). For example, let’s define a simple service for a "Greeter" service:

```text
// greeter.proto
syntax = "proto3";

package greeter;

// The Greeter service definition.
service Greeter {
  // Sends a greeting
  rpc SayHello (HelloRequest) returns (HelloReply);
}

// The request message containing the user's name.
message HelloRequest {
  string name = 1;
}

// The response message containing the greetings.
message HelloReply {
  string message = 1;
}
```

### 2. **Generate Java Code**

Use the `protoc` compiler to generate Java classes from your `.proto` file. This can be done with a Maven plugin, Gradle plugin, or manually from the command line. For Maven, include the following in your `pom.xml`:

```xml
<build>
  <plugins>
    <plugin>
      <groupId>org.xolstice.maven.plugins</groupId>
      <artifactId>protobuf-maven-plugin</artifactId>
      <version>0.6.1</version>
      <executions>
        <execution>
          <goals>
            <goal>compile</goal>
            <goal>compile-custom</goal>
          </goals>
        </execution>
      </executions>
    </plugin>
  </plugins>
</build>
```

After configuring Maven, run `mvn compile` to generate the Java classes.

### 3. **Implement the Server**

Create a server that implements the generated `GreeterGrpc.GreeterImplBase` class. This is where you define the behavior of the service.

```java
import io.grpc.stub.StreamObserver;
import greeter.GreeterGrpc;
import greeter.HelloReply;
import greeter.HelloRequest;

public class GreeterServiceImpl extends GreeterGrpc.GreeterImplBase {
  @Override
  public void sayHello(HelloRequest request, StreamObserver<HelloReply> responseObserver) {
    String name = request.getName();
    String message = "Hello " + name;
    
    HelloReply reply = HelloReply.newBuilder().setMessage(message).build();
    
    responseObserver.onNext(reply);
    responseObserver.onCompleted();
  }
}
```

Then, set up and start the gRPC server:

```java
import io.grpc.Server;
import io.grpc.ServerBuilder;

public class GreeterServer {
  public static void main(String[] args) throws IOException, InterruptedException {
    Server server = ServerBuilder.forPort(8080)
        .addService(new GreeterServiceImpl())
        .build()
        .start();
    
    System.out.println("Server started, listening on " + server.getPort());
    server.awaitTermination();
  }
}
```

### 4. **Implement the Client**

Create a client to call the service. Use the generated `GreeterGrpc.GreeterBlockingStub` for synchronous calls.

```java
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import greeter.GreeterGrpc;
import greeter.HelloReply;
import greeter.HelloRequest;

public class GreeterClient {
  public static void main(String[] args) {
    ManagedChannel channel = ManagedChannelBuilder.forAddress("localhost", 8080)
        .usePlaintext()
        .build();

    GreeterGrpc.GreeterBlockingStub stub = GreeterGrpc.newBlockingStub(channel);

    HelloRequest request = HelloRequest.newBuilder().setName("World").build();
    HelloReply response = stub.sayHello(request);
    
    System.out.println("Greeting: " + response.getMessage());

    channel.shutdown();
  }
}
```

### 5. **Run the Application**

1. **Start the Server**: Run the `GreeterServer` class. The server will listen for incoming requests on port 8080.

2. **Run the Client**: Run the `GreeterClient` class. It will send a request to the server and print the response.

