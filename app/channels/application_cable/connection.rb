module ApplicationCable
  class Connection < ActionCable::Connection::Base

    private

    def find_verified_user
      if verified_user == env['warden'].user
        verified_user
      else
        reject_unauthorized_connection
      end
    end
  end
end
