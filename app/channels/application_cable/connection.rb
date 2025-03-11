module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    private

    def current_session
      Session.find_by(id: cookies&.signed[:session_id])
    end

    def find_verified_user
      current_session&.user || reject_unauthorized_connection
    end
  end
end
