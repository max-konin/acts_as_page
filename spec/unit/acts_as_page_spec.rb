require 'rails_helper'

class Page
  include Mongoid::Document
  include ActsAsPage
end


describe 'Page' do
  let(:page) {Page.new name: 'new'}

  specify 'should name be present' do
    expect((Page.new).valid?).to be_falsey
  end

  specify 'should name be unique' do
    page.save!
    expect((Page.new name: 'new').valid?).to be_falsey
  end

  describe '#seo' do
    it 'return instance of class Seo' do
      expect(page.seo).to be_a(ActsAsPage::Seo)
    end

    it 'set default title as name' do
      expect(page.seo.title).to eq(page.name)
    end
  end

end