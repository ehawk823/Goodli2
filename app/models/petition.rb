class Petition
  include Change::Resources
  attr_reader :client, :petition, :signature_count

  def initialize
    @client = Change::Requests::Client.new({ :api_key => ENV["CHANGE_KEY"], :secret_token => ENV["CHANGE_SECRET"] })
    @petition = Petition.new(@client)
    @loaded_petition = @petition.load("https://www.change.org/p/ellen-degeneres-dear-ellen-cut-out-leather-from-your-new-shoe-line")
    @signature_count = @loaded_petition['signature_count']
    # self.save
    # in whatever controller, Petition.new(petition name, or something), then save/.create
  end
end

# how will a user interact with a petition/petitions?
# petitions table that has columns for each attribute you want a petition to have 
# if you want a user to have many petitions and a petition to have many users, you need
#  user_petition join table


