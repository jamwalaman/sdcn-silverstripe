<div class="container">
    <div class="row content-element__content<% if $Style %> $StyleVariant<% end_if %>">
        <div class="col">
        <% if $ShowTitle %>
            <h2 class="content-element__title">$Title</h2>
        <% end_if %>
        $HTML
        </div>
    </div>
</div>