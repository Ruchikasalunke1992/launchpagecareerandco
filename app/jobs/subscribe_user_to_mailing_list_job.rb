class SubscribeUserToMailingListJob < ActiveJob::Base
  queue_as :default

  def perform(user)
     @list_id = "451f8a6528"
     gb = Gibbon::API.new("f897da43c2a3a5ec4e026ca5ec30170f-us11")
     gb.lists.subscribe({:id => @list_id ,:email => {:email => user.email}, :merge_vars => {:FNAME => user
    .fname, :LNAME => user
    .lname, :ROLE => user
    .role }, :double_optin => false})
  
  end
end
