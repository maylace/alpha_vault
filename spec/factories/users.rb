FactoryGirl.define do
  factory :user do
  	login 'john5'
 	firstname 'Jora'
 	lastname 'Cobani'
 	password '12345665'
 	email { FFaker::Internet.email }
 	
    
  end
end
