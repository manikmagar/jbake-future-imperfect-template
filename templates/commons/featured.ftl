  
    <#if (post.featured?has_content) >
    <a href="${(config.uri_noExtension?boolean == true)?then(post.noExtensionUri??,post.uri)}" class="image featured">
        <img src="${content.rootPath}/${content.featured}" alt="${content.featuredalt}" />
    </a>
    </#if>
 