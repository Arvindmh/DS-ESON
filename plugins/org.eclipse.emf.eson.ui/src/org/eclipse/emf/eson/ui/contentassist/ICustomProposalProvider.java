/*
 * #%L
 * org.eclipse.emf.eson.ui
 * %%
 * Copyright (C) 2009 - 2014 Sebastian Benz, Michael Vorburger and others
 * %%
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * #L%
 */
package org.eclipse.emf.eson.ui.contentassist;

import org.eclipse.emf.ecore.EAttribute;

/**
 *
 * @author phanikumark
 *
 */
public interface ICustomProposalProvider {
    
    String[] getProposals(EAttribute eAttribute);

}
