<footer>
	<div class="container py-5">
		<div class="row">
			<div class="col-md-6">$SiteConfig.FooterContent</div>
			<div class="col-md-6">
				<ul>
				<% loop $Menu(1) %>
					<% if not $Children %>
					<li><a href="$Link">$MenuTitle</a></li>
					<% end_if %>
					<% if $Children %>
							<% with $Level(1) %>
							<li class="subpage-title">$MenuTitle</li>
							<ul class="subpage-link">
								<% loop $Children %>
								<li><a href="$Link">$MenuTitle</a></li>
								<% end_loop %>
							</ul>
						<% end_with %>
					<% end_if %>
				<% end_loop %>
				</ul>
			</div>
		</div>
		<p>&copy; $Now.Year $SiteConfig.Title</p>
	</div>
</footer>
