# JpStations

Provide All Station Data in Japan.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jp_stations'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jp_stations

## Usage

### Load Library
```
require 'jp_stations'
```

### Search for station names by kanji and hiragana
```
irb(main):001:0> stations = JpStations::List.find('渋谷')
=> [#<JpStations::List:0x00007fb6cf8b0b68 @kanji="高座渋谷駅", @kana="こうざしぶやえき">,
#<JpStations::List:0x00007fb6cf8b0b40 @kanji="渋谷駅", @kana="しぶやえき">]

irb(main):002:0> stations[1].kana
=> "しぶやえき"

irb(main):003:0> stations[1].kanji
=> "渋谷駅"
```

### Get All Station Data In Japan
```
irb(main):001:0> stations = JpStations::List.all
=> [#<JpStations::List:0x00007faeb8e94b70 @kanji="相生駅", @kana="あいおいえき">,
#<JpStations::List:0x00007faeb8e94b48 @kanji="相老駅", @kana="あいおいえき">,
#<JpStations::List:0x00007faeb8e94b20 @kanji="相生山駅", @kana="あいおいやまえき">,
#<JpStations::List:0x00007faeb8e94af8 @kanji="相賀駅", @kana="あいがえき">,
...

```

## Copyright
Copyright (c) 2019 hatsu38.
This program is free software under MIT license.
