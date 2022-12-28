<div class="navbg">
  <div class="container">

  <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand svg-logo" href="$BaseHref"><img src="$resourceURL('themes/sdcn/images/SDCN-logo-website.svg')" alt="$SiteConfig.Title"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

          <% loop $Menu(1) %>
            <% if not $Children %>
              <li class="nav-item"><a href="$Link" class="nav-link <% if $isCurrent %>active<% end_if %>" aria-current="page">$MenuTitle</a></li>
            <% end_if %>
            <% if $Children %>
              <% with $Level(1) %>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">$MenuTitle</a>
                  <ul class="dropdown-menu">
                    <% loop $Children %>
                    <li><a class="dropdown-item" href="$Link">$MenuTitle</a></li>
                    <% end_loop %>
                  </ul>
              </li>
              <% end_with %>
            <% end_if %>
          <% end_loop %>

        </ul>
      </div>
    </div>
  </nav>

  </div>
</div>
