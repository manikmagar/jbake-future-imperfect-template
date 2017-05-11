  
    <#if (post.featuredimage?has_content) >
    <a href="${(config.uri_noExtension?boolean == true)?then(post.noExtensionUri??,post.uri)}" class="image featured">
        <img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${post.featuredimage}" alt="${post.featuredalt}" />
    </a>
    </#if>
 