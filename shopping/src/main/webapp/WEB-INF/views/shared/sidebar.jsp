



<div class="col-lg-3">

	<h1 class="my-4">Shop Name</h1>
	<c:forEach items="${categories}" var="category">
		<a href="${contextRoot}/show/category/${category.id}/products"
			class="list-group-item" id="a_${category.name}">${category.name}</a>
	</c:forEach>
</div>

