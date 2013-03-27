/*
 * generated by Xtext
 */
package org.sculptor.dsl.formatting

import com.google.inject.Inject
import org.eclipse.xtext.formatting.impl.AbstractDeclarativeFormatter
import org.eclipse.xtext.formatting.impl.FormattingConfig
import org.sculptor.dsl.services.SculptordslGrammarAccess

/**
 * This class contains custom formatting description.
 * 
 * see : http://www.eclipse.org/Xtext/documentation/latest/xtext.html#formatting
 * on how and when to use it 
 */
class SculptordslFormatter extends AbstractDeclarativeFormatter {

	@Inject extension SculptordslGrammarAccess
	
	override protected void configureFormatting(FormattingConfig c) {

		c.setAutoLinewrap(120);

		c.setIndentation(dslApplicationAccess.leftCurlyBracketKeyword_1_0_2,
				dslApplicationAccess.rightCurlyBracketKeyword_3
		)
		findKeywordPairs("{", "}").forEach[
			c.setIndentation(it.first, it.second)
			c.setLinewrap().after(it.first)
			c.setLinewrap(1, 2, 2).around(it.second)
		]

		findKeywords("@").forEach[
			c.setNoSpace().after(it)
		]
		findKeywords("!").forEach[
			c.setNoSpace().after(it)
		]
		findKeywords(";").forEach[
			c.setNoSpace().before(it)
			c.setLinewrap(1, 2, 2).after(it)
		]
		findKeywords(".").forEach[
			c.setNoSpace().around(it)
		]
		findKeywords("=").forEach[
			c.setNoSpace().around(it)
		]
		findKeywords("<").forEach[
			c.setNoSpace().around(it)
		]
		findKeywords(">").forEach[
			c.setNoSpace().before(it)
		]
		findKeywords("(").forEach[
			c.setNoSpace().around(it)
		]
		findKeywords(")").forEach[
			c.setNoSpace().before(it)
		]
		findKeywords(",").forEach[
			c.setNoSpace().before(it)
			c.setSpace(" ").after(it)
		]
		findKeywords("gap").forEach[
			c.setLinewrap().around(it)
		]
		findKeywords("package").forEach[
			c.setLinewrap().before(it)
		]
		findKeywords("scaffold").forEach[
			c.setLinewrap().around(it)
		]
		findKeywords("belongsTo").forEach[
			c.setLinewrap().before(it)
		]
		findKeywords("aggregateRoot").forEach[
			c.setLinewrap().after(it)
		]
		findKeywords("validate").forEach[
			c.setLinewrap().before(it)
		]
		findKeywords("databaseTable").forEach[
			c.setLinewrap().before(it)
		]
		findKeywords("discriminatorValue").forEach[
			c.setLinewrap().before(it)
		]
		findKeywords("discriminatorColumn").forEach[
			c.setLinewrap().before(it)
		]
		findKeywords("discriminatorType").forEach[
			c.setLinewrap().before(it)
		]
		findKeywords("discriminatorLength").forEach[
			c.setLinewrap().before(it)
		]
		findKeywords("inheritanceType").forEach[
			c.setLinewrap().before(it)
		]
		findKeywords("subscribe").forEach[
			c.setLinewrap().before(it)
		]

		c.setLinewrap(1, 2, 2).around(dslImportRule)
		c.setLinewrap(1, 2, 2).before(dslApplicationAccess.basePackageKeyword_1_0_3)
		c.setLinewrap(2, 2, 3).around(dslModuleRule)
		c.setLinewrap(2, 2, 3).around(dslEntityRule)
		c.setLinewrap(2, 2, 3).around(dslValueObjectRule)
		c.setLinewrap(2, 2, 3).around(dslBasicTypeRule)
		c.setLinewrap(2, 2, 3).around(dslEnumRule)
		c.setLinewrap(2, 2, 3).around(dslDomainEventRule)
		c.setLinewrap(2, 2, 3).around(dslCommandEventRule)
		c.setLinewrap(2, 2, 3).around(dslServiceRule)
		c.setLinewrap(2, 2, 3).around(dslResourceRule)
		c.setLinewrap(2, 2, 3).around(dslConsumerRule)
		c.setLinewrap(2, 2, 3).around(dslRepositoryRule)
		c.setLinewrap(1, 2, 2).around(dslAttributeRule)
		c.setLinewrap(1, 2, 2).around(dslReferenceRule)
		c.setLinewrap(1, 2, 2).around(dslDomainObjectOperationRule)
		c.setLinewrap(1, 2, 2).around(dslEnumAttributeRule)
		c.setLinewrap(1, 2, 2).around(dslDtoAttributeRule)
		c.setLinewrap(1, 2, 2).around(dslDtoReferenceRule)
		c.setLinewrap(1, 2, 2).around(dslDtoAttributeRule)
		c.setLinewrap(1, 2, 2).around(dslServiceOperationRule)
		c.setLinewrap(1, 2, 2).around(dslResourceOperationRule)
		c.setLinewrap(1, 2, 2).around(dslRepositoryOperationRule)
		c.setLinewrap().around(dslServiceAccess.webServiceWebserviceKeyword_4_2_0)
		c.setLinewrap().before(dslServiceAccess.hintKeyword_4_1_0)
		c.setLinewrap().before(dslResourceAccess.hintKeyword_4_1_0)
		c.setLinewrap().before(dslConsumerAccess.hintKeyword_4_0)
		c.setLinewrap().before(dslEntityAccess.hintKeyword_8_5_0)
		c.setLinewrap().before(dslValueObjectAccess.hintKeyword_8_5_0)
		c.setLinewrap().before(dslBasicTypeAccess.hintKeyword_6_2_0)
		c.setLinewrap().before(dslEnumAccess.hintKeyword_5_0)
		c.setLinewrap().before(dslDomainEventAccess.hintKeyword_8_3_0)
		c.setLinewrap().before(dslCommandEventAccess.hintKeyword_8_3_0)
		c.setLinewrap().before(dslConsumerAccess.queueNameKeyword_7_0_0_0)
		c.setLinewrap().before(dslConsumerAccess.topicNameKeyword_7_0_0_1)
		c.setLinewrap().after(dslEntityAccess.optimisticLockingKeyword_8_0_0_1)
		c.setLinewrap().after(dslValueObjectAccess.optimisticLockingKeyword_8_0_0_1)
		c.setLinewrap().after(dslEntityAccess.auditableKeyword_8_1_0_1)
		c.setLinewrap().around(dslEntityAccess.cacheKeyword_8_2_1_1)
		c.setLinewrap().around(dslValueObjectAccess.cacheKeyword_8_2_1_1)
		c.setLinewrap().around(dslModuleAccess.docAssignment_0)
		c.setLinewrap().around(dslEntityAccess.docAssignment_0)
		c.setLinewrap().around(dslValueObjectAccess.docAssignment_0)
		c.setLinewrap().around(dslBasicTypeAccess.docAssignment_0)
		c.setLinewrap().around(dslDataTransferObjectAccess.docAssignment_0)
		c.setLinewrap().around(dslEnumAccess.docAssignment_0)
		c.setLinewrap().around(dslDomainEventAccess.docAssignment_0)
		c.setLinewrap().around(dslCommandEventAccess.docAssignment_0)
		c.setLinewrap().around(dslServiceAccess.docAssignment_0)
		c.setLinewrap().around(dslRepositoryAccess.docAssignment_0)
		c.setLinewrap().around(dslConsumerAccess.docAssignment_0)
		c.setLinewrap().around(dslServiceOperationAccess.docAssignment_0)
		c.setLinewrap().around(dslResourceOperationAccess.docAssignment_0)
		c.setLinewrap().around(dslRepositoryOperationAccess.docAssignment_0)
		c.setLinewrap().around(dslAttributeAccess.docAssignment_0)
		c.setLinewrap().around(dslReferenceAccess.docAssignment_0)
		c.setLinewrap().around(dslDtoAttributeAccess.docAssignment_0)
		c.setLinewrap().around(dslDtoReferenceAccess.docAssignment_0)
		c.setLinewrap().around(dslEnumAttributeAccess.docAssignment_0)
		c.setLinewrap().around(dslEnumValueAccess.docAssignment_0)
		c.setLinewrap().around(dslApplicationAccess.docAssignment_0)

		// It's usually a good idea to activate the following three statements.
		// They will add and preserve newlines around comments
		c.setLinewrap(0, 1, 2).before(SL_COMMENTRule)
		c.setLinewrap(0, 1, 2).before(ML_COMMENTRule)
		c.setLinewrap(0, 1, 1).after(ML_COMMENTRule)
	}
}
