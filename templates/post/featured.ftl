  
    <#if (post.featured?has_content) >
    <a href="${post.noExtensionUri}" class="image featured">
        <img src="${content.rootPath}/${content.featured}" alt="${content.featuredalt}" />
    </a>
    </#if>
 