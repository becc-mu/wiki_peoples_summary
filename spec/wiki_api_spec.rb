require 'wiki_api'

describe WikiAPI do
  subject(:wikapi) { described_class.new }

  it 'should return a page given url' do
    page = subject.ask('john lennon')
    expect(page.title).to eq 'https://en.wikipedia.org/wiki/John_Lennon'
  end
end
