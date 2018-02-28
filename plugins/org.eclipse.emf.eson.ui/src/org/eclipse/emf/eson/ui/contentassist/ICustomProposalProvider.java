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
