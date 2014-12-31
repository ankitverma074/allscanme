class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   # before_action :authenticate_user!
  protected
  
  def after_sign_in_path_for(resource)
    if ! current_user.email.nil? #Only if its not null
        @userdb = Userh.find_by_email(current_user.email)
        
        if @userdb.nil? 
# If a non existing userh, then create an empty space for qrhash here and store in userh
          @userh_new = Userh.new( :email => current_user.email , :qrhash => "space" )
          @userh_new.save
          
#  Run path calculation         
          @userdb = Userh.find_by_email(current_user.email)
          @path = '/userhs/' + @userdb.id.to_s
          
#  Now replace with URL based qrhash in DB         
          @userdb = Userh.find_by_email(current_user.email)
          @userdb.qrhash = 'allscanme.herokuapp.com/userhs/' + @userdb.id.to_s
          @userdb.save  
          
          return @path 
        else
          @path = '/userhs/' + @userdb.id.to_s
          return @path
        end 
    end
  end
end