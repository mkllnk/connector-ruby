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



require "datafoodconsortium/connector/agent"
require "virtual_assembly/semantizer"

class DataFoodConsortium::Connector::Person < DataFoodConsortium::Connector::Agent

	

	attr_accessor :firstName
	attr_accessor :lastName
	attr_accessor :affiliatedOrganizations

	def initialize(firstName, lastName)
		super()
		self.semanticType = "http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#Person"
		self.firstName = firstName
		self.lastName = lastName
		self.affiliatedOrganizations = []
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#firstName") { self.firstName }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#familyName") { self.lastName }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#affiliates") { self.affiliatedOrganizations }
	end
	

	def affiliateTo(organization)
		self.affiliatedOrganizations.push(organization)
	end
	
	def leaveAffiliatedOrganization(organization)
		raise "Not implemented"
	end
	

end
