# MIT License
# 
# Copyright (c) 2023 Maxime Lecoq <maxime@lecoqlibre.fr>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.




require "virtual_assembly/semantizer"

class DataFoodConsortium::Connector::SKOSConcept

	include VirtualAssembly::Semantizer::SemanticObject

	# @return [ISKOSConcept]
	attr_accessor :broaders

	# @return [ISKOSConceptScheme]
	attr_accessor :schemes

	# @return [ISKOSConcept]
	attr_accessor :narrowers

	# @return [ISKOSLabel]
	attr_accessor :prefLabels

	# @param semanticId [String]
	# @param broaders [ISKOSConcept]
	# @param schemes [ISKOSConceptScheme]
	# @param narrowers [ISKOSConcept]
	# @param prefLabels [ISKOSLabel]
	def initialize(semanticId, broaders: [], schemes: [], narrowers: [], prefLabels: [])
		super(semanticId)
		@broaders = broaders
		@schemes = schemes
		@narrowers = narrowers
		@prefLabels = prefLabels
		self.semanticType = "skos:Concept"
		registerSemanticProperty("skos:broader") { self.broaders }
		registerSemanticProperty("skos:inScheme") { self.schemes }
		registerSemanticProperty("skos:narrower") { self.narrowers }
		registerSemanticProperty("skos:prefLabel") { self.prefLabels }
	end
	


end
