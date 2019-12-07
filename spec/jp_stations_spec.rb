RSpec.describe JpStations do
  it 'has a version number' do
    expect(JpStations::VERSION).not_to be true
  end

  shared_examples 'station is correct' do
    it { expect(station.kana).to eq 'あいおいえき' }
    it { expect(station.kanji).to eq '相老駅' }
  end

  describe '#all' do
    describe 'size' do
      let(:stations) { JpStations::List.all }
      it { expect(stations.size).to eq 8793 }
    end
    describe 'station' do
      let(:station) { JpStations::List.all[1] }
      it_behaves_like 'station is correct'
    end
  end

  describe '#find' do
    describe 'kana_search' do
      let(:stations) { JpStations::List.find('あい') }
      it { expect(stations.size).to eq 85 }
    end

    describe 'kanji_search' do
      let(:stations) { JpStations::List.find('相生') }
      it { expect(stations.size).to eq 4 }
    end
  end
end
