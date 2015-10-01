require 'net/http'
  require 'open-uri'
  require 'nokogiri'

 class ChangeOrg

  URL = "https://api.change.org/v1/petitions/#{48503}/targets/CHANGE_KEY/CHANGE_SECRET"

  def get_petitions
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def petition_name
    petitions = JSON.parse(self.get_petitions)
    petitions.collect do |target|
      target[0][:name]
    end
  end

  def create_project_hash
    html = File.read(URL)
    change_org = Nokogiri::HTML(html)

    petitions_hash = {}

    change_org.css("").each do |petition|
      title = petition.css("h2.something a something").text
      petitions[title] = {
        :description => petition.css("p.bbcard_blurb").text
      }
    end
  end
end

petitions = ChangeOrg.new.get_petitions
puts petitions

