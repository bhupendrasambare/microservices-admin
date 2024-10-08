# Microservices Admin Pannel

![Microservices Admin Dashboard](./images/screenshoot.png)

This project prove a admin panel for all the instance connected to it showing there work load, memory, connections and service status. It also shows the services performance. ALl this is done through the dependency of Spring Boot Admin and Actuator support.

## Features

- **Service Admin Panel:** Microservices can register themselves and can allow the admin panel to monitor there health and memory status.
- **Health Checks:** Health check is showing using proper graph and statistics using Spring boot Actuator.
- **Downtime and Monitoring:** Check the service status and services up and downtime.

## Technologies Used

- Java
- Spring Boot
- Spring boot Admin
- Spring boot Actuator
- Docker
- Jenkins

## Getting Started

### Prerequisites

- **Java 17**
- **Docker**
- **Maven>=3.8**
- **PORT :** 8761

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/bhupendrasambare/microservices-admin.git
    cd microservices-admin
    ```

2. Build the project using Maven:
    ```bash
    ./mvnw clean install
    ```

3. Run the application:
    ```bash
    java -jar target/microservices-admin-0.0.1-SNAPSHOT.jar
    ```

### Running with Docker

1. Build the Docker image:
    ```bash
    docker build -t microservices-admin .
    ```

2. Run the Docker container:
    ```bash
    docker run -d -p 8762:8762 microservices-admin
    ```

### Jenkins Integration

The project includes a `Jenkinsfile` for CI/CD integration. Ensure Jenkins is set up with Docker and Maven installed.


## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, please contact [Bhupendra Sambare](https://github.com/bhupendrasambare).

---

*This project is part of Bhupendra Sambare's repositories on GitHub.*
