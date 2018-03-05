<!-- Sidebar -->
<section id="sidebar">

    <!-- Intro -->
        <section id="intro">
                <#if (config.sidebar_intro_pic_circle?boolean == true)>
                    <a href="${content.rootpath}" class="logo"><img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${config.sidebar_intro_pic_src}" class="intro-circle" width="${config.sidebar_intro_pic_width}" alt="${config.sidebar_intro_pic_alt}" /></a>

                <#elseif (config.sidebar_intro_pic_imperfect?boolean == true) >
                    <a href="${content.rootpath}" class="logo"><img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${config.sidebar_intro_pic_src}" alt="${config.sidebar_intro_pic_alt}" /></a>
                <#else>
                    <img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${config.sidebar_intro_pic_src}" width="${config.sidebar_intro_pic_width}" alt="${config.sidebar_intro_pic_alt}" />
                 </#if>

                <header>
                    <h2>${config.sidebar_intro_header}</h2>
                    <p>${config.sidebar_intro_summary}</p>
                </header>

            <ul class="icons">
                <#if (config.render_feed?boolean == true) >
                    <li><a href="${config.feed_file}" type="application/rss+xml"
                        target="_blank" title="RSS" class="fa fa-rss"></a></li>
                </#if>
                <#if (config.sidebar_social_show?boolean == true)>
                	<#include "social.ftl">
                </#if>
            </ul>
        </section>

    <!-- Posts List -->
        <section id="recent-posts">
            <ul class="posts">
                <header>
                    <h3>Recent Posts</h3>
                </header>
				<#list posts as sideBarPost1>

                	<#if (sideBarPost1?counter > config.sidebar_postAmount?number) ><#break/></#if>
                    <li>
                        <article>
                            <header>
                                <h3><a href="${content.rootpath}${sideBarPost1.noExtensionUri!sideBarPost1.uri}">${sideBarPost1.title}</a></h3>
                                 <time class="published"
							            datetime='${sideBarPost1.date?string("MMM dd, yyyy")}'>
							            ${sideBarPost1.date?string("MMM dd, yyyy")}</time>
                            </header>
                        </article>
                    </li>
                </#list>

				<#if (published_posts?size > config.sidebar_postAmount?number) >
                    <li>
                        <ul class="actions">
                            <li><a href="${content.rootpath}${config.sidebar_viewMorePostLink?has_content?then(config.sidebar_viewMorePostLink,config.archive_path)}"
                            class="button">View more posts</a></li>
                        </ul>
                    </li>
                </#if>
            </ul>
        </section>

    <!-- Tags List can be show/hide from config-->
    <#if (config.sidebar_tags_show?boolean?? )>
        <section id="tags">
            <ul class="posts">
                <header>
                    <h3>Tags</h3>
                </header>

                <#list alltags as sideBarTag1>
                    <li>
                        <article>
                            <header>
                                <a href="${content.rootpath}${config.tag_path}/${sideBarTag1}${config.output_extension}">${sideBarTag1}</a>
                                <!-- JBake 2.5.1 Issue#357 prevents accessing db, If you are using 2.5.1 or earlier comment below SPAN element. -->
                                <span style="float:right;"> ${db.getPublishedPostsByTag(sideBarTag1).size()} </span>
                            </header>
                        </article>
                    </li>
                </#list>
            </ul>
        </section>
    </#if>


    <!-- About -->
        <section class="blurb">
            <h2>About</h2>
            <p>${config.sidebar_intro_about}</p>

            <ul class="actions">
                <li><a href="${content.rootpath}${config.sidebar_intro_about_learnMore}" class="button">Learn More</a></li>
            </ul>
        </section>


        <section id="footer">
            <p class="copyright">&copy; ${config.site_title}. Design: <a href="http://html5up.net" target="_blank">HTML5 UP</a>. Ported For SSG by <a href="https://github.com/jpescador/hugo-future-imperfect">Julio Pescador</a>. Adapted to JBake by <a href="//github.com/manikmagar" target="_blank">Manik Magar</a>. Baked with <a href="http://jbake.org">JBake ${version}</a>.
            <#if (config.render_sitemap?boolean)><a href="/${config.sitemap_file}" target="_blank">Sitemap</a>.</#if></p>
        </section>

</section>
