/*
* generated by Xtext
*/
package org.eclipse.emf.eson.xtextintegration;

import org.eclipse.xtext.junit4.IInjectorProvider;

import com.google.inject.Injector;

public class MyDslUiInjectorProvider implements IInjectorProvider {
	
	public Injector getInjector() {
		return org.eclipse.emf.eson.xtextintegration.ui.internal.MyDslActivator.getInstance().getInjector("org.eclipse.emf.eson.xtextintegration.MyDsl");
	}
	
}
