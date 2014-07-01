require 'acts_as_page/seo'

module ActsAsPage
  extend ActiveSupport::Concern

  included do
    field :name
    embeds_one :seo, class_name: 'ActsAsPage::Seo', as: :page

    accepts_nested_attributes_for :seo

    after_initialize :init_seo
  end

  protected
    def init_seo
      self.build_seo(title: name) if seo.nil?
    end

end

