require 'mongoid'
module ActsAsPage
  class Seo
    include Mongoid::Document

    field :title,       default: ''
    field :description, default: ''
    field :keywords,    default: ''

    embedded_in :page, polymorphic: true
  end
end