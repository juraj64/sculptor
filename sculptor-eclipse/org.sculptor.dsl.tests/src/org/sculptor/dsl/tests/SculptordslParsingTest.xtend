/*
 * generated by Xtext 2.12.0
 */
package org.sculptor.dsl.tests

import com.google.inject.Inject
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.XtextRunner
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.sculptor.dsl.sculptordsl.DslModel

@RunWith(XtextRunner)
@InjectWith(SculptordslInjectorProvider)
class SculptordslParsingTest {

	@Inject ParseHelper<DslModel> parseHelper
	
	@Test
	def void loadModel() {
		val result = parseHelper.parse('''
			ApplicationPart Test {
				
				Module mod {
					Entity Test {}
				}
				
			}
		''')
		Assert.assertNotNull(result)
		Assert.assertTrue(result.eResource.errors.isEmpty)
	}
}
