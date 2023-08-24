
class StringController < ApplicationController

    # @api POST /reverse
    # Reverses a string received in the request body.
    #
    # @example
    #   POST /reverse
    #   Request Body:
    #   {
    #     "my_string": "string to reverse"
    #   }
    #
    # @return [Hash] A JSON response with the reversed string.
    def reverse
        input_string = JSON.parse(request.body.read)
        reversed_string = input_string['my_string'].reverse

        render json: { reversed_string: reversed_string }
    end

    # @api POST /add
    # Add a new string to the database.
    #
    # @example
    #   POST /add
    #   Request Body:
    #   {
    #     "my_string": "string to add"
    #   }
    #
    # @return [Hash] A JSON response with the ID of the added string and success indicator.
    def add
        input_string = JSON.parse(request.body.read)
        my_string = MyString.new(content: input_string['my_string'])
        
        if my_string.save
            render json: { my_string_id: my_string.id, success: true }, status: :created
        else
            render json: { errors: my_string.errors.full_messages, success: false }, status: :unprocessable_entity
        end
    end

    # @api GET /get/:my_string_id
    # Retrieves the value of a MyString entry by its ID.
    #
    # @example
    #   GET /get/1
    #
    # @param my_string_id [String] ID of the MyString entry to retrieve.
    #
    # @return [Hash] A JSON response with the retrieved string value and success indicator.
    def show
        string_obj = MyString.find_by(id: params[:my_string_id])
    
        if string_obj
          render json: { my_string_value: string_obj.content, success: true }
        else
          render json: { my_string_value: '', success: false }, status: :not_found
        end
    end

end
