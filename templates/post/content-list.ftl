<article class="post">
     <#include "header.ftl">

    <#include "../commons/featured.ftl">
    
    <p>${post.summary!''}</p>

    <footer>
        <ul class="actions">
            <li><a href="${content.rootpath}${(config.uri_noExtension?boolean == true)?then(post.noExtensionUri??,post.uri)}" class="button big">Continue Reading</a></li>
        </ul>
        <#include "../commons/footer-tags.ftl">
    </footer>
</article>
