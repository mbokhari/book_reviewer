class Identity < OmniAuth::Identity::Models::ActiveRecord
attr_accessible :email, :name, :password, :password_confirmation

validates :email, :name, :password, :password_confirmation, :presence  => true 
validates :email, :format  =>  { :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i}
end
