<div class="container">

	<!-- Breadcrumb -->
	<div class="row">
		
		<div class="col-xs-12">
		
			
			<ol class="breadcrumb">
			
				<li><a href="${contextRoot}/home">Home</a></li>
				<li><a href="${contextRoot}/show/all/products">Products</a></li>
				<li class="active">${product.name}</li>
			
			</ol>
		
		
		</div>
	
	
	</div>
	
	
	<div class="row">
	
		<!-- Display the product image -->
		<div class="col-xs-12 col-sm-4">
		
			<div class="thumbnail">
							
				<img src="${images}/${product.code}.jpg" class="img img-responsive"/>
						
			</div>
		
		</div>
	
		
		<!-- Display the product description -->	
		<div class="col-xs-12 col-sm-8">
		
			<h3>${product.name}</h3>
			<hr/>
			
			<p>${product.description}</p>
			<hr/>
			
			<h4>Price: <strong> &#8377; ${product.unitPrice} /-</strong></h4>
			<hr/>
			
			
			
			
			
			
			<security:authorize access="isAnonymous() or hasAuthority('USER')">	

						
				
				<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart</a>
				
				
				
			<a href="${contextRoot}/favourite/add/${product.id}/product" class="btn btn-success">
				<span class="glyphicon glyphicon-heart"></span> Add to Favourite</a>
				
				<a href="show/pdf/${product.id}" class="btn btn-success">
				<span class="glyphicon glyphicon-download"></span> Download</a>
				
				
			</security:authorize>
			
			
			<security:authorize access="hasAuthority('ADMIN')">
				<a href="${contextRoot}/manage/${product.id}/product" class="btn btn-success">
				<span class="glyphicon glyphicon-pencil"></span> Edit</a>
			</security:authorize>	
						
			

			<a href="${contextRoot}/show/all/products" class="btn btn-warning">
				Continue Reading</a>
				
				<form:textarea path="address" rows="5" cols="30" />
				<a class="btn btn-success">
				<span class="glyphicon glyphicon-download"></span>Send Feedback</a>
											
		</div>

	
	</div>

</div>