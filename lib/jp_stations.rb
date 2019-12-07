require "jp_stations/version"
require 'yaml'

module JpStations
  class List
    JP_STATION_FILE_PATH = '../jp_station.yml'.freeze

    attr_accessor :kanji, :kana

    def self.data
      filepath = File.join(File.dirname(__FILE__), JP_STATION_FILE_PATH)
      YAML.load_file(filepath)
    end

    def self.all
      data.map { |value| build(value) }
    end

    def self.build(obj_station)
      station = new

      station.kanji = obj_station[:kanji]
      station.kana = obj_station[:kana]

      station
    end

    def self.find(word)
      return if word.nil?

      obj_station = search(word)
      obj_station.map { |station| build(station) }
    end

    def self.search(word)
      data.select do |station|
        station[:kana].include?(word) || station[:kanji].include?(word)
      end
    end
  end
end
