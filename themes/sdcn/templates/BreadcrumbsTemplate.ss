<% if $Pages %>
	<li class="breadcrumb-item"><a class="breadcrumb-item" href="$BaseHref">Home</a></li>
	<% loop $Pages %>

		<% if $Last %>
			<li class="breadcrumb-item">$MenuTitle.XML</li>
		<% else %>
			<% if not Up.Unlinked %><li class="breadcrumb-item"><a href="$Link" class="breadcrumb-$Pos"><% end_if %>
			$MenuTitle.XML
			<% if not Up.Unlinked %></a></li><% end_if %>
		<% end_if %>

	<% end_loop %>
<% end_if %>

