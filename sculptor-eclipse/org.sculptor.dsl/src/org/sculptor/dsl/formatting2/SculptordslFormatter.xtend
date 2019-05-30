/*
 * generated by Xtext 2.17.1
 */
package org.sculptor.dsl.formatting2

import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument
import org.sculptor.dsl.sculptordsl.DslApplication
import org.sculptor.dsl.sculptordsl.DslImport
import org.sculptor.dsl.sculptordsl.DslModel
import org.sculptor.dsl.sculptordsl.DslModule
import org.sculptor.dsl.sculptordsl.DslSimpleDomainObject

import static org.sculptor.dsl.sculptordsl.SculptordslPackage.Literals.*
import org.sculptor.dsl.sculptordsl.DslService

class SculptordslFormatter extends AbstractFormatter2 {

	def dispatch void format(DslModel dslModel, extension IFormattableDocument document) {
		dslModel.prepend[setNewLines(0, 0, 1); noSpace].append[newLine]
		for (dslImport : dslModel.imports) {
			dslImport.format.append[setNewLines(1, 1, 2)]
		}
		dslModel.app.format
	}

	def dispatch void format(DslImport dslImport, extension IFormattableDocument document) {
		dslImport.regionFor.feature(DSL_IMPORT__IMPORT_URI).surround[oneSpace]
	}

	def dispatch void format(DslApplication dslApplication, extension IFormattableDocument document) {
		dslApplication.regionFor.feature(DSL_APPLICATION__NAME).surround[oneSpace]
		interior(dslApplication.regionFor.keyword("{").append[setNewLines(1, 1, 2)], dslApplication.regionFor.keyword("}"))[indent]
		for (dslModule : dslApplication.modules) {
			dslModule.format.append[setNewLines(1, 1, 2)]
		}
	}

	def dispatch void format(DslModule dslModule, extension IFormattableDocument document) {
		dslModule.regionFor.feature(DSL_MODULE__NAME).surround[oneSpace]
		interior(dslModule.regionFor.keyword("{").append[setNewLines(1, 1, 2)], dslModule.regionFor.keyword("}"))[indent]
		for (service : dslModule.services) {
			service.format.append[setNewLines(1, 1, 2)]
		}
		for (resource : dslModule.resources) {
			resource.format.append[setNewLines(1, 1, 2)]
		}
		for (consumer : dslModule.consumers) {
			consumer.format.append[setNewLines(1, 1, 2)]
		}
		for (domainObject : dslModule.domainObjects) {
			domainObject.format.append[setNewLines(1, 1, 2)]
		}
	}

	def dispatch void format(DslService dslService, extension IFormattableDocument document) {
		dslService.regionFor.feature(DSL_SERVICE_REPOSITORY_OPTION__NAME).surround[oneSpace]
		interior(dslService.regionFor.keyword("{").append[newLine], dslService.regionFor.keyword("}"))[indent]
	}

	def dispatch void format(DslSimpleDomainObject dslSimpleDomainObject, extension IFormattableDocument document) {
		dslSimpleDomainObject.regionFor.feature(DSL_SIMPLE_DOMAIN_OBJECT__NAME).surround[oneSpace]
		interior(dslSimpleDomainObject.regionFor.keyword("{").append[setNewLines(1, 1, 2)],
			dslSimpleDomainObject.regionFor.keyword("}"))[indent]
	}

// TODO: implement for DslModule, DslService, DslResource, DslConsumer, DslServiceOperation, DslResourceOperation, DslRepositoryOperation, DslParameter, DslEntity, DslValueObject, DslDomainEvent, DslCommandEvent, DslTrait, DslDomainObjectOperation, DslDataTransferObject, DslBasicType, DslReference, DslRepository, DslEnum, DslEnumValue
}
