require 'rails_helper'

class Page
  include Mongoid::Document
  include ActsAsPage
end


describe 'ActsAsPage' do
  let(:page) {Page.new name: 'new'}
  describe '#seo' do
    it 'return instance of class Seo' do
      expect(page.seo).to be_a(ActsAsPage::Seo)
    end

    it 'set default title as name' do
      expect(page.seo.title).to eq(page.name)
    end
  end
end