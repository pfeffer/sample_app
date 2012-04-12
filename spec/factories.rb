FactoryGirl.define do 
	factory :user do
		name			"Masha"
		email			"masha.ku@gmail.com"
		password 	"foobar"
		password_confirmation "foobar"
	end
end