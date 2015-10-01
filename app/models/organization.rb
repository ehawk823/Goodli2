class Organization
  include OrganizationsHelper
  include Change::Resources
  attr_accessor :client, :organization, :signature_count, :signature_count

  def initialize
    @client = Change::Requests::Client.new({ :api_key => ENV["CHANGE_KEY"], :secret_token => ENV["CHANGE_SECRET"] })
    @organization = Organization.new(@client)
    @loaded_organization = @organization.load("https://www.change.org/p/ellen-degeneres-dear-ellen-cut-out-leather-from-your-new-shoe-line")
    @org_id = @loaded_petition['organization_id']
  end
end