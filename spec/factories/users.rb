FactoryGirl.define do

   pass = "testtest"

   factory :user do
     name                  "ryosuke"
     email                 "ryoryo-rk@outlook.jp"
     password              pass
     password_confirmation pass
   end

end