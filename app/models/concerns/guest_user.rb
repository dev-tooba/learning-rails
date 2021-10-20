module GuestUser
    extend ActiveSupport::Concern
    
    def current_user
        super || guest_user_method
    end

    def guest_user_method
        OpenStruct.new(name: "Guest User", 
                       first_name: "Guest", 
                       last_name:"User", 
                       email:"guest@example.com"
                      )
    end
end