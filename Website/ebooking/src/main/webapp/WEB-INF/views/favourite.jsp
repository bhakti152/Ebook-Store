<c:set var="availableCount" value="${userModel.favourite.favouriteLines}" />
<div class="container">


	<c:if test="${not empty message}">
		
		<div class="alert alert-info">
			<h3 class="text-center">${message}</h3>
		</div>		
	
	</c:if>
	
	<c:choose>
		<c:when test="${not empty favouriteLines}">
			<table id="cart" class="table table-hover table-condensed">
			   	<thead>
					<tr>
						<th style="width:50%">Product</th>
						<th style="width:10%">Price</th>
						
						<th style="width:22%" class="text-center">Subtotal</th>
						<th style="width:10%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${favouriteLines}" var="favouriteLine">
					
					
					<tr>
						<td data-th="Product">
							<div class="row">
								<div class="col-sm-2 hidden-xs">
									<img src="${images}/${favouriteLine.product.code}.jpg" alt="${favouriteLine.product.name}" class="img-responsive dataTableImg"/></div>
								<div class="col-sm-10">
									<h4 class="nomargin">${favouriteLine.product.name} 
										<c:if test="${favouriteLine.available == false}">
											<strong style="color:red">(Not Available)</strong> 
										</c:if>
									</h4>
																		<p>Description : ${favouriteLine.product.description}
								</div>
							</div>
						</td>
						<td data-th="Price"> &#8377; ${favouriteLine.buyingPrice} /-</td>
						
						
						
					</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					
				
				</tfoot>
			</table>
		
		</c:when>
		
		<c:otherwise>
			
			<div class="jumbotron">
				
				<h3 class="text-center">No Favourites!!!</h3>
			
			</div>
		
		</c:otherwise>
	</c:choose>




</div>
