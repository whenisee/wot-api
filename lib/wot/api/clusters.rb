module Wot
  class Api
    CLUSTERS = {
      "RU" => {
        :base_url => "http://api.worldoftanks.ru",
        :application_id => "171745d21f7f98fd8878771da1000a31"
      },
      "EU" => {
        :base_url => "api.worldoftanks.eu",
        :application_id => "d0a293dc77667c9328783d489c8cef73"
      },
      "NA" => {
        :base_url => "http://api.worldoftanks.com",
        :application_id => "16924c431c705523aae25b6f638c54dd"
      },
      "ASIA" => {
        :base_url => "http://api.worldoftanks.asia",
        :application_id => "39b4939f5f2460b3285bfa708e4b252c"
      },
      "KR" => {
        :base_url => "http://api.worldoftanks.kr",
        :application_id => "ffea0f1c3c5f770db09357d94fe6abfb"
      }
    }

    def self.cluster(region)
      cluster = CLUSTERS[region.to_s]
      fail "Region '#{region}' not found!" if cluster.nil?
      return cluster
    end
  end
end