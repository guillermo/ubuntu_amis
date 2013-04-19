require "ubuntu_amis/version"
require 'yaml'
require 'net/http'
require 'uri'

module UbuntuAmis
  URL="http://cloud-images.ubuntu.com/locator/ec2/releasesTable"

  def self.table
    fix_table(parse(fix_string(get(uri)))["aaData"])
  end

  def self.uri
    URI(URL).tap { |uri|
      uri.query = Time.now.to_i.to_s
    }
  end

  def self.get(uri)
    Net::HTTP.get_response(uri).body
  end

  def self.fix_string(data)
    data.reverse.sub(',','').reverse
  end

  def self.fix_table(table)
    table.each_with_index{|row,index|
      table[index][6] = row[6][/(ami-[\da-f]{8})/,1]
    }
    table
  end

  def self.parse(json)
    YAML.load(json)
  end
end
