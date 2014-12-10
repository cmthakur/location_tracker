module Tracker

  def self.get_details(ip)
    geoip.city(ip).to_hash
  end

  def self.country_codes(ip)
    details = geoip.city(ip)
    details[:country_code2] || details[:country_code3]
  end


  def self.geoip
    GeoIP.new('./lib/GeoLiteCity.dat')
  end
end