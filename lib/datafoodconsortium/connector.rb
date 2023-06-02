module DataFoodConsortium
	module Connector
		require 'datafoodconsortium/connector/connector'
		require 'datafoodconsortium/connector/json_ld_serializer'
		require 'datafoodconsortium/connector/skos_parser_element'
		require 'datafoodconsortium/connector/skos_parser'

		require 'datafoodconsortium/connector/catalog_item.rb'
		require 'datafoodconsortium/connector/offer.rb'
		require 'datafoodconsortium/connector/order.rb'
		require 'datafoodconsortium/connector/order_line.rb'
		require 'datafoodconsortium/connector/price.rb'
		require 'datafoodconsortium/connector/repository.rb'
		require 'datafoodconsortium/connector/agent.rb'
		require 'datafoodconsortium/connector/customer_category.rb'
		require 'datafoodconsortium/connector/enterprise.rb'
		require 'datafoodconsortium/connector/person.rb'
		require 'datafoodconsortium/connector/defined_product.rb'
		require 'datafoodconsortium/connector/supplied_product.rb'
		require 'datafoodconsortium/connector/address.rb'
		require 'datafoodconsortium/connector/allergen_characteristic.rb'
		require 'datafoodconsortium/connector/allergen_dimension.rb'
		require 'datafoodconsortium/connector/certification.rb'
		require 'datafoodconsortium/connector/characteristic.rb'
		require 'datafoodconsortium/connector/characteristic_dimension.rb'
		require 'datafoodconsortium/connector/geographical_origin.rb'
		require 'datafoodconsortium/connector/nature_origin.rb'
		require 'datafoodconsortium/connector/nutrient_characteristic.rb'
		require 'datafoodconsortium/connector/part_origin.rb'
		require 'datafoodconsortium/connector/physical_characteristic.rb'
		require 'datafoodconsortium/connector/product_type.rb'
		require 'datafoodconsortium/connector/quantitative_value.rb'
		require 'datafoodconsortium/connector/unit.rb'
		require 'datafoodconsortium/connector/skos_concept.rb'

          CLASSES = {
            CatalogItem::SEMANTIC_TYPE => CatalogItem,
            Offer::SEMANTIC_TYPE => Offer,
            Price::SEMANTIC_TYPE => Price,
            Agent::SEMANTIC_TYPE => Agent,
            CustomerCategory::SEMANTIC_TYPE => CustomerCategory,
            Enterprise::SEMANTIC_TYPE => Enterprise,
            Person::SEMANTIC_TYPE => Person,
            DefinedProduct::SEMANTIC_TYPE => DefinedProduct,
            SuppliedProduct::SEMANTIC_TYPE => SuppliedProduct,
            Address::SEMANTIC_TYPE => Address,
            AllergenCharacteristic::SEMANTIC_TYPE => AllergenCharacteristic,
            NutrientCharacteristic::SEMANTIC_TYPE => NutrientCharacteristic,
            PhysicalCharacteristic::SEMANTIC_TYPE => PhysicalCharacteristic,
            QuantitativeValue::SEMANTIC_TYPE => QuantitativeValue,
            SKOSConcept::SEMANTIC_TYPE => SKOSConcept,
          }.freeze
	end
end
