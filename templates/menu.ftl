<!-- Header -->
<header id="header">
    <#if (content == null)??>
        <h1><a href="${config.site_host}">${config.site_title}</i></a></h1>
    <#else>
        <h2><a href="${config.site_host}">${config.site_title}</i></a></h2>
    </#if>

    <nav class="links">
        <ul>
        	<#list config.site_menus_main as menuItem1>
        		<#if (config.site_menus_main_showTagsDropdown?boolean)?? == true && menuItem1 == 'tags'>
        			<li>
	                    <a href="<#if (config['site_menus_main_' + menuItem1 + '_url'] != "/")> ${content.rootpath}${config['site_menus_main_' + menuItem1 + '_url']}<#else> ${config.site_host}</#if>">
	                    
	                       
	                       <i class="${config['site_menus_main_' + menuItem1 + '_icon']}">&nbsp;</i>${config['site_menus_main_' + menuItem1 + '_label']}
	                        
	                    </a>
	                    <ul class="dropdown-menu">
				            <#list alltags as tag>
									<li><a class="plain" href="/${config.tag_path}/${tag}">${tag}</a></li>
							</#list>
			          	</ul>
        		
                	</li>
        			
        		<#else>
        			<li>
	                    <a href="<#if (config['site_menus_main_' + menuItem1 + '_url'] != "/")> ${content.rootpath}${config['site_menus_main_' + menuItem1 + '_url']}<#else> ${config.site_host}</#if>">
	                       
	                            <i class="${config['site_menus_main_' + menuItem1 + '_icon']}">&nbsp;</i>${config['site_menus_main_' + menuItem1 + '_label']}
	                        
	                    </a>
                	</li>
        		
        		</#if>
        		 
			</#list>
        </ul>
    </nav>
    <nav class="main">
        <ul>
            <#if content.shareNav??>
            <li id="share-nav" class="share-menu" style="display:none;">
                <a class="fa-share-alt" href="#share-menu">Share</a>
            </li>
            </#if>
            <li class="search">
                <a class="fa-search" href="#search">Search</a>
                <form id="search" method="get" action="//google.com/search">
                    <input type="text" name="q" placeholder="Search" />
                    <input type="hidden" name="q" value="site:${config.site_host}">
                </form>
            </li>
            <li class="menu">
                <a class="fa-bars" href="#menu">Menu</a>
            </li>
        </ul>
    </nav>
</header>

<!-- Menu -->
<section id="menu">

    <!-- Search -->
        <section>
            <form class="search" method="get" action="//google.com/search">
                <input type="text" name="q" placeholder="Search" />
                <input type="hidden" name="q" value="site:${config.site_host}">
            </form>
        </section>

    <!-- Links -->
        <section>
            <ul class="links">
                <#list config.site_menus_main as menuItem>
        		 <li>
                    <a href="<#if (config['site_menus_main_' + menuItem + '_url'] != "/")> ${content.rootpath}${config['site_menus_main_' + menuItem + '_url']}<#else> ${config.site_host}</#if>">
                       
                            <i class="${config['site_menus_main_' + menuItem + '_icon']}">&nbsp;</i>${config['site_menus_main_' + menuItem + '_label']}
                        
                    </a>
                </li>
				</#list>
            </ul>
        </section>

    <!-- Recent Posts -->
        <section>
            <ul class="links">
                <header>
                    <h3>Recent Posts</h3>
                </header>
                <#list posts as menuPost1>
                	<#if (menuPost1?counter > config.sidebar_postAmount?number) ><#break/></#if>
                    <li>
                        <a href="${content.rootpath}${content.rootpath}${menuPost1.noExtensionUri!menuPost1.uri}"><p>${menuPost1.title}</p></a>
                    </li>
                </#list>
            </ul>
        </section>

    <!-- Actions -->
        <!--
        <section>
            <ul class="actions vertical">
                <li><a href="#" class="button big fit">Log In</a></li>
            </ul>
        </section>
        -->
</section>
