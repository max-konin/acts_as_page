require 'mongoid_orderable'
require 'mongoid_slug'
require 'acts_as_page/seo'

module ActsAsPage
  extend ActiveSupport::Concern

  included do
    include Mongoid::Orderable
    include Mongoid::Slug

    field :name
    field :text, default: ''

    orderable
    slug :name

    embeds_one :seo, class_name: 'ActsAsPage::Seo', as: :page

    accepts_nested_attributes_for :seo

    after_initialize do |o|
      o.build_seo(title: name) if o.seo.nil?
    end

    validates :name, presence: true, uniqueness: true
  end
end

