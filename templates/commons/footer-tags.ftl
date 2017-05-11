	<#if (config.render_tags?boolean == true)  && post.tags?? >	
		<ul class="stats">
    	    <!-- Display the categories associated with this post -->
    	    <li><i class="fa fa-tags">&nbsp;</i>  Tags: </li>
    	    <#list post.tags as tag>
 	        <li><a href='${content.rootpath}${config.tag_path}/${tag}${config.output_extension}'>${tag}</a></li>
 	        </#list>
 		</ul>
 	</#if>