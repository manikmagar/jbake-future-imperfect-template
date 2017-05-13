<article class="post" data-file="${content.rootpath}${post.noExtensionUri!post.uri}" data-target="article">
     <#include "header.ftl">

    <#include "../commons/featured.ftl">
    
    <p>${post.summary!''}</p>

    <footer>
        <ul class="actions">
            <li><a href="${content.rootpath}${post.noExtensionUri!post.uri}" class="button big">Continue Reading</a></li>
        </ul>
        <#include "../commons/footer-tags.ftl">
    </footer>
</article>
