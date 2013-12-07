module Spree
  Taxon.class_eval do
    has_many :products, ->{ order('spree_products_taxons.position') }, :through => :classifications
  end
end
