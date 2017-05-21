<ul class="actions pagination">
  	
  		<#if (post.previousContent)??> 
        <li><a href="${content.rootpath}${post.previousContent.noExtensionUri!post.previousContent.uri}" 
                class="button big previous">${content.previousContent.title}</a></li>
         </#if>
       <#if (post.nextContent)??> 
        <li><a href="${content.rootpath}${post.nextContent.noExtensionUri!post.nextContent.uri}" 
                class="button big next">${content.nextContent.title}</a></li>
        </#if>
	
</ul>
