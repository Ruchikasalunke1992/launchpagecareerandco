Gibbon::API.api_key = "f897da43c2a3a5ec4e026ca5ec30170f-us11"
Gibbon::API.timeout = 15
Gibbon::API.throws_exceptions = true
puts "MailChimp API key: #{Gibbon::API.api_key}" # temporary
puts ENV["MAILCHIMP_LIST_ID"]