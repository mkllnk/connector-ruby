The Data Food Connector is a tool to help you to integrate the DFC standard within you application. Each concept of the DFC ontology can be manipulated with the help of the corresponding class supplied by the connector.

This connector will also help you to generate the JSON-LD required by the other DFC compliant platforms to exchange data.

The [Data Food Consortium](https://datafoodconsortium.org) project (DFC) which aims to provide interoperability between food supply chain platforms. We use the semantizer library inside our connector library to help developers to exchange JSON-LD data expressed with the DFC ontology.

# Get started

You can install the connector with the following command: `gem install datafoodconsortium-connector`.

Then in you Ruby file, import the newly installed connector:
```
require 'datafoodconsortium/connector'
```

The connector is a singleton. To get it, access the instance member of the class:
```
connector = DataFoodConsortium::Connector::Connector.instance
```

You can then load our different SKOS vocabularies providing the corresponding JSON-LD files:
```
connector.loadMeasures(JSON.parse(File.read("/path/to/measures.json")))
connector.loadFacets(JSON.parse(File.read("/path/to/facets.json")))
connector.loadProductTypes(JSON.parse(File.read("/path/to/productTypes.json")))
```

Then you can create product like:
```
tomato = DataFoodConsortium::Connector::SuppliedProduct.new("Tomato", "Awesome tomato")
```

Don't forget to set its semantic id (URI) so the object will not being considered as a blank node:
```
tomato.semanticId = "https://myplatform.com/tomato"
```

You can set the different properties of the object, like adding a certification. The connector provide helpers to get the certification from the previously loaded vocabularies:
```
tomato.addCertification(connector.FACETS.CERTIFICATION.BIODYNAMICLABEL.DEMETER)
```

To finish you can export the DFC object to JSON-LD with:
```
puts connector.export(tomato)
```

Note that you can export mutiple objects passing them to the method: `connector.export(object1, object2, ...)`.

This will output DFC compliant valid JSON-LD:
```JSON
{
  "@context": "http://static.datafoodconsortium.org/ontologies/context.json",
  "@type": "dfc-b:SuppliedProduct",
  "dfc-b:name": "Tomato",
  "dfc-b:description": "Awesome tomato",
  "dfc-b:hasCertification": "dfc-f:Demeter",
  "@id": "https://myplatform.com/tomato"
}
```

__Important:__ Please note that the exporter does not dereference the objects. If you want to include them in the output, just pass these objects to the `export` method:
```
puts connector.export(catalogItem, tomato)
```

This will append the added object into the `@graph`:
```JSON
{
  "@context": "http://static.datafoodconsortium.org/ontologies/context.json",
  "@graph": [
    {
      "@type": "dfc-b:CatalogItem",
      "dfc-b:references": "https://myplatform.com/tomato",
      "@id": "https://myplatform.com/catalogItem"
    },
    {
      "@type": "dfc-b:SuppliedProduct",
      "dfc-b:name": "Tomato",
      "dfc-b:description": "Awesome tomato",
      "dfc-b:hasCertification": "dfc-f:Demeter",
      "@id": "https://myplatform.com/tomato"
    }
  ]
}
```