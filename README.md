# My Strings API App

MyStrings API is a Ruby on Rails application that provides endpoints for string manipulation and storage.

## Getting Started

To get started with this application, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/your-deema1999/my_strings_api_app.git
   cd my_strings_api_app
   ```

2. Install dependencies:

    ```bash
    bundle install
    ```     

3. Create the database and run migrations:
 
    ```bash
    rails db:create
    rails db:migrate
    ```     

4. Start the Rails server:
 
    ```bash
    rails server
    ```     

The application will be available at http://localhost:3000.

## Endpoints

### Reverse String

- **POST /reverse**

  Reverses a string received in the request body.

  - **Request Body**:

    ```json
    {
      "my_string": "string to reverse"
    }
    ```

  - **Response**:

    ```json
    {
      "reversed_string": "reversed string"
    }
    ```

### Add String

- **POST /add**

  Adds a new string to the database.

  - **Request Body**:

    ```json
    {
      "my_string": "string to add"
    }
    ```

  - **Response**:

    ```json
    {
      "my_string_id": "ID of the added string",
      "success": true/false
    }
    ```

### Get String

- **GET /get/:my_string_id**

  Retrieves the value of a MyString entry by its ID.

  - **Parameters**:

    - `my_string_id` (string): ID of the MyString entry to retrieve.

  - **Response**:

    ```json
    {
      "my_string_value": "retrieved string value",
      "success
    }
    ```

## Documentation

For more detailed documentation, refer to the [Postman Documentation](https://documenter.getpostman.com/view/12880801/2s9Y5Ww2xS) generated for this project.



