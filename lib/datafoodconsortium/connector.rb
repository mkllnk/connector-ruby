module DataFoodConsortium
	module Connector
		require 'datafoodconsortium/connector/connector'
		require 'datafoodconsortium/connector/json_ld_serializer'
		require 'datafoodconsortium/connector/skos_parser_element'
		require 'datafoodconsortium/connector/skos_parser'
		require 'datafoodconsortium/connector/agent.rb'
		require 'datafoodconsortium/connector/customer_category.rb'
		require 'datafoodconsortium/connector/enterprise.rb'
		require 'datafoodconsortium/connector/person.rb'
		require 'datafoodconsortium/connector/phone_number.rb'
		require 'datafoodconsortium/connector/social_media.rb'
		require 'datafoodconsortium/connector/address.rb'
		require 'datafoodconsortium/connector/allergen_characteristic.rb'
		require 'datafoodconsortium/connector/characteristic.rb'
		require 'datafoodconsortium/connector/nutrient_characteristic.rb'
		require 'datafoodconsortium/connector/physical_characteristic.rb'
		require 'datafoodconsortium/connector/quantitative_value.rb'
		require 'datafoodconsortium/connector/quantity.rb'
		require 'datafoodconsortium/connector/defined_product.rb'
		require 'datafoodconsortium/connector/flow.rb'
		require 'datafoodconsortium/connector/planned_consumption_flow.rb'
		require 'datafoodconsortium/connector/planned_production_flow.rb'
		require 'datafoodconsortium/connector/planned_transformation.rb'
		require 'datafoodconsortium/connector/supplied_product.rb'
		require 'datafoodconsortium/connector/technical_product.rb'
		require 'datafoodconsortium/connector/catalog.rb'
		require 'datafoodconsortium/connector/catalog_item.rb'
		require 'datafoodconsortium/connector/offer.rb'
		require 'datafoodconsortium/connector/order.rb'
		require 'datafoodconsortium/connector/order_line.rb'
		require 'datafoodconsortium/connector/price.rb'
		require 'datafoodconsortium/connector/sale_session.rb'
		require 'datafoodconsortium/connector/skos_concept.rb'

		def self.semantic_types
		  constants.map(&method(:const_get)).select do |c|
		    c.constants.include?(:SEMANTIC_TYPE)
		  end
		end
	end
end
