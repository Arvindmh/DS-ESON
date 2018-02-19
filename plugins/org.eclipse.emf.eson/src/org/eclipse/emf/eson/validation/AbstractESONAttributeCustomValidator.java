/**
 * <copyright>
 *
 * Copyright (c) 2014 Michael Vorburger and others.
 * All rights reserved.   This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: 
 *   Sebastian Benz - Initial API and implementation
 *
 * </copyright>
 *
 * 
 */
package org.eclipse.emf.eson.validation;

import java.util.NoSuchElementException;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.eson.eFactory.EFactoryPackage;
import org.eclipse.emf.eson.eFactory.Feature;
import org.eclipse.emf.eson.eFactory.StringAttribute;
import org.eclipse.emf.eson.eFactory.Value;
import org.eclipse.emf.eson.eFactory.util.EFactorySwitch;
import org.eclipse.xtext.EcoreUtil2;
import org.eclipse.xtext.validation.ValidationMessageAcceptor;

public abstract class AbstractESONAttributeCustomValidator extends EFactorySwitch<Boolean> {
	
	private ValidationMessageAcceptor messageAcceptor;
	private static int INDEX = ValidationMessageAcceptor.INSIGNIFICANT_INDEX;
	public static final String ERR_METADATA_CHECK = "metadataCheck";

	@Override
	public Boolean caseStringAttribute(StringAttribute object) {
		EAttribute featureId = EFactoryPackage.Literals.STRING_ATTRIBUTE__VALUE;
		IStatus status = doCheckStringAttribute(object);
		if (status.isOK()) {
			return true;
		} else {
			getMessageAcceptor().acceptError(status.getMessage(), object, featureId, INDEX, ERR_METADATA_CHECK);
			return false;
		}
	}
	
	protected abstract IStatus doCheckStringAttribute(StringAttribute value);

	protected Feature getFeature(Value value) {
		Feature feature = EcoreUtil2.getContainerOfType(value, Feature.class);
		if (feature == null)
			throw new NoSuchElementException("EFactory Value " + value.toString() + " is not contained in a Feature?!");
		return feature;
	}

	public ValidationMessageAcceptor getMessageAcceptor() {
		return messageAcceptor;
	}

	public void setMessageAcceptor(ValidationMessageAcceptor messageAcceptor) {
		this.messageAcceptor = messageAcceptor;
	}

}
