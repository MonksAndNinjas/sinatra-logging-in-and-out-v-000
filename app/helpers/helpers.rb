class Helpers

  def self.current_user(arg)
    User.find_by(session[:user_id])
  end
end