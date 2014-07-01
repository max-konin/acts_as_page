require 'acts_as_page/seo'

module ActsAsPage
  extend ActiveSupport::Concern

  included do
    include Mongoid::Orderable
    include Mongoid::Slug

    field :name
    embeds_one :seo, class_name: 'ActsAsPage::Seo', as: :page

    accepts_nested_attributes_for :seo

    after_initialize do |o|
      o.build_seo(title: name) if o.seo.nil?
    end
  end
end

