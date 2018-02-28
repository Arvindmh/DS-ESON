package org.eclipse.emf.eson.ui.contentassist;

import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.emf.eson.EFactoryRegistryReader;

/**
 *
 * @author phanikumark
 *
 */
public class EFactoryProposalProviderExtensionRegistry {

    private static final String pluginID = "org.eclipse.emf.eson.ui";
    
    protected final IExtensionRegistry extensionRegistry =  RegistryFactory.getRegistry();

    protected final EFactoryRegistryReader<ICustomProposalProvider> registryReader;

    public EFactoryProposalProviderExtensionRegistry() {
        this.registryReader = new EFactoryRegistryReader<ICustomProposalProvider>(extensionRegistry, pluginID, "proposalprovider");
    }

    public Iterable<ICustomProposalProvider> getProposalProviders() {
        return registryReader.get();
    }

}
