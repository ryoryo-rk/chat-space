FactoryGirl.define do

   pass = "testtest"

   factory :user do
     name                 "ryosuke"
     email                "ryoryo@outlook.jp"
     password              pass
     password_confirmation pass

     after(:create) do |user|
      create_list(:group, 3, users: [user])
     end
   end
end
