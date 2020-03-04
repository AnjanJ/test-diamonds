# frozen_string_literal: true

class Product < ApplicationRecord
  include Filterable
  scope :filter_by_brand, ->(brand) { where brand: brand }
  scope :filter_by_model, ->(model) { where model: model }
  scope :filter_by_name, ->(name) { where('name like ?', "#{name}%") }
end
