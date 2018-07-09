class Helpers

  def self.current_user(arg)
    User.find_by(session[:user_id])
  end

  def self.is_logged_in?(arg)
    
  end
end