<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<div class="container">

	<div class="row">
	<c:if test="${not empty message}">
	<div class="col-xs-12">
		<div class="alert alert-success alert-dismisible">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		${message}
		</div>
	</div>
	</c:if>
		<div class="com-md-offset-2 col-md-8">

			<div class="panel panel-info">


				<div class="panel-heading">

					<h4>Product Management</h4>
				</div>
				<div class="panel-body">

					<!-- Form Elements -->

					<sf:form class="form-horizontal" modelAttribute="product"
						action="${contextRoot}/manage/products"
						method="POST">
						<div class="form-group">

							<label class="control-label col-md-4" for="name">EnterProduct
								Name</label>


							<div class="col-md-8">
								<sf:input type="text" path="name" placeholder="Product Name"
									class="form-control" />
								<em class="help-block">Please Enter Product Name</em>

							</div>
						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="brand">Enter
								Brand Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="brand" id="brand"
									placeholder="Brand Name" class="form-control" />
								<em class="help-block">Please Enter Brand Name</em>

							</div>
						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="description">Product
								Description:</label>
							<div class="col-md-8">
								<sf:textarea path="description" id="description" rows="4"
									cols="" placeholder="write a description" />

							</div>
						</div>


						<div class="form-group">

							<label class="control-label col-md-4" for="unitPrice">Enter
								Unit Price:</label>
							<div class="col-md-8">
								<sf:input type="number" path="unitPrice" id="unitPrice"
									placeholder="Unit Price" />


							</div>
						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="quantity">Quantity
								Available:</label>
							<div class="col-md-8">
								<sf:input type="number" path="quantity" id="quantity"
									placeholder="Quantity Available" />


							</div>
						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="categoryId">Quantity
								Available:</label>
							<div class="col-md-8">
								<sf:select class="form-control" id="categoryId"
									path="categoryId" items="${categories}" itemLabel="name"
									itemValue="id" />




							</div>
						</div>
						<div class="form-group">


							<div class="col-md-offset-4 col-md-8">
								<input type="submit" name="submit" id="submit" value="Submit"
									class="btn btn-primary" />
								<!-- Hidden Field For product -->
								<sf:hidden path="id" />
								<sf:hidden path="code" />
								<sf:hidden path="supplierId" />
								<sf:hidden path="active" />
								<sf:hidden path="purchases" />
								<sf:hidden path="views" />
							</div>
						</div>

					</sf:form>

				</div>
			</div>

		</div>

	</div>

</div>
