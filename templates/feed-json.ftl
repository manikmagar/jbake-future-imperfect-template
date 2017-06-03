{
    "version": "https://jsonfeed.org/version/1",
    "title": "${config.site_title}",
    "description": "${config.site_description!' '}",
    "home_page_url": "${config.site_host}",
    "feed_url": "${config.site_host}/${config.feed_file}",
    "author" : {
    	"name": "${config.site_author}",
    	"avatar": "${config.site_host}/${config.site_author_avatar}"
    },
    "items": [
    	<#list posts as post>
        {
            "id": "${config.site_host}/${post.noExtensionUri!post.uri}",
            <#if (post.summary?has_content) > "summary": "${post.summary?json_string!''}",</#if>
           <#if (post.featuredimage?has_content) > "banner_image": "${config.site_host}/${post.featuredimage}", </#if>
            "url": "${config.site_host}/${post.noExtensionUri!post.uri}",
            "date_published": "${post.date?string('yyyy-MM-dd\'T\'HH:mm:ssXXX')}",
            <#if (post.last_updated?has_content)>"date_modified": "${post.last_updated?date('yyyy-MM-dd')?string('yyyy-MM-dd\'T\'HH:mm:ssXXX')}",</#if>
            "author" : "${post.author!config.site_author}",
            "tags": [<#list post.tags as tag> "${tag}"<#sep>, </#sep> </#list>],
            "content_html" : <@compress single_line=true>"${post.body?json_string}"</@compress>
        }<#sep>, </#sep>
        </#list>
    ]
}