class Helpers

  def self.current_user(arg)
    @user = User.find(arg[:user_id])
    @user
  end

  def self.is_logged_in?(arg)
    true if !!arg[:user_id]
  end
  
end