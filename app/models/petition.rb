class Petition
  include Change::Resources
  attr_reader :client, :petition, :signature_count, :id

  def initialize
    binding.pry
    @client = Change::Requests::Client.new({ :api_key => ENV["CHANGE_KEY"], :secret_token => ENV["CHANGE_SECRET"] })
    @petition = Petition.new(@client)
    @loaded_petition = @petition.load("https://www.change.org/p/ellen-degeneres-dear-ellen-cut-out-leather-from-your-new-shoe-line")
    @signature_count = @loaded_petition.properties['signature_count']
  end
end