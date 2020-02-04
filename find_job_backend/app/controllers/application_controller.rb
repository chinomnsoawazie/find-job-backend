class ApplicationController < ActionController::API
  before_action :authorized, only: [:auth_header]

  def hmac_secret
     ENV["HMAC_SECRET"]
  end

  def encode_token(payload)
    # should store secret in env variable
    JWT.encode(payload, hmac_secret, 'HS256')
  end

  def  token(user_id)
    payload = {user_id: user_id}
    JWT.encode(payload, hmac_secret, 'HS256')
  end


  def auth_header
    { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end


  def decoded_token
    if auth_header
        token = auth_header.split(' ')[1]
        # header: { 'Authorization': 'Bearer <token>' }
        begin
            JWT.decode(token, hmac_secret, true, algorithm: 'HS256')
        rescue JWT::DecodeError
            nil
        end
    end
  end


  def current_user
    if decoded_token
        user_id = decoded_token[0]['user_id']
        user = User.find_by(id: user_id)
    end
  end


  def logged_in?
    !!current_user_id
  end


  def current_user_id
    begin
        token = request.headers["Authorization"]
        decoded_array = JWT.decode(token, hmac_secret, true, {algorithm: 'HS256'})
        payload = decoded_array.first
    rescue #JWT::VerificationError
        return nil
    end
    #below is lacking in his code
    # payload["user_id"]
  end


  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

end