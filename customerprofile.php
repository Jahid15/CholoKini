<?php
include("header.php");
if (isset($_POST['submit'])) {
	$sql = "UPDATE customer SET customer_name='" . $_POST['customer_name'] . "',email_id='" . $_POST['email_id'] . "',address='" . $_POST['address'] . "',state='" . $_POST['state'] . "',city='" . $_POST['city'] . "',landmark='" . $_POST['landmark'] . "',pincode='" . $_POST['pincode'] . "',mobile_no='" . $_POST['mobile_no'] . "' WHERE  customer_id='" . $_SESSION['customer_id'] . "'";
	$qsql = mysqli_query($con, $sql);
	echo mysqli_error($con);
	if (mysqli_affected_rows($con) == 1) {
		echo "<script>alert('Customer Profile updated successfully...');</script>";
	}
}
if (isset($_SESSION['customer_id'])) {
	$sqledit = "SELECT * FROM customer WHERE customer_id='" .  $_SESSION['customer_id'] . "'";
	$qsqledit = mysqli_query($con, $sqledit);
	$rsedit = mysqli_fetch_array($qsqledit);
}
?>
<div class="content-wraper mt-50">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-3"></div>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="customer-login-register">


					<!-- banner -->
					<div class="banner">
						<?php
						include("sidebar.php");
						?>
						<div class="w3l_banner_nav_right">
							<!-- about -->
							<div class="privacy about">
								<h3>Customer <span>Profile</span></h3>

								<div class="checkout-left">

									<div class="col-md-12 ">
										<form action="" method="post" class="creditly-card-form agileinfo_form" onsubmit="return validatecustomer()">
											<section class="creditly-wrapper wthree, w3_agileits_wrapper">
												<div class="information-wrapper">
													<div class="first-row form-group">
														<div class="controls">
															<label class="control-label">Customer Name</label><span class="errormsg" id="errcustomer_name"></span>
															<input class="billing-address-name form-control" type="text" name="customer_name" id="customer_name" placeholder="customer name" value="<?php echo $rsedit['customer_name']; ?>">
														</div>


														<div class="w3_agileits_card_number_grid_left">
															<div class="controls">
																<label class="control-label">Email ID</label><span class="errormsg" id="erremail_id"></span>
																<input name="email_id" id="email_id" class="form-control" type="text" placeholder="Email ID" value="<?php echo $rsedit['email_id']; ?>">
															</div>
														</div>

														<div class="w3_agileits_card_number_grid_left">
															<div class="controls">
																<label class="control-label">Address</label><span class="errormsg" id="erraddress"></span>
																<textarea name="address" id="address" class="form-control" placeholder="Enter Address"><?php echo $rsedit['address']; ?></textarea>
															</div>
														</div>
														<div class="w3_agileits_card_number_grid_left">
															<div class="controls">
																<label class="control-label">District</label><span class="errormsg" id="errstate"></span>
																<select name="state" id="state" class="form-control">
																	<option value="">------------Select District------------</option>
																	<option value="Dhaka">Dhaka</option>
																	<option value="Faridpur">Faridpur</option>
																	<option value="Gazipur">Gazipur</option>
																	<option value="Gopalganj">Gopalganj</option>
																	<option value="Kishoreganj">Kishoreganj</option>
																	<option value="Madaripur">Madaripur</option>
																	<option value="Manikganj">Manikganj</option>
																	<option value="Munshiganj">Munshiganj</option>
																	<option value="Narayanganj">Narayanganj</option>
																	<option value="Narsingdi">Narsingdi</option>
																	<option value="Rajbari">Rajbari</option>
																	<option value="Shariatpur">Shariatpur</option>
																	<option value="Tangail">Tangail</option>
																	<option value="Bogra">Bogra</option>
																	<option value="Joypurhat">Joypurhat</option>
																	<option value="Naogaon">Naogaon</option>
																	<option value="Natore">Natore</option>
																	<option value="Chapainawabganj">Chapainawabganj</option>
																	<option value="Pabna">Pabna</option>
																	<option value="Rajshahi">Rajshahi</option>
																	<option value="Sirajganj">Sirajganj</option>
																	<option value="Dinajpur">Dinajpur</option>
																	<option value="Gaibandha">Gaibandha</option>
																	<option value="Kurigram">Kurigram</option>
																	<option value="Lalmonirhat">Lalmonirhat</option>
																	<option value="Nilphamari">Nilphamari</option>
																	<option value="Panchagarh">Panchagarh</option>
																	<option value="Rangpur">Rangpur</option>
																	<option value="Thakurgaon">Thakurgaon</option>
																	<option value="Barguna">Barguna</option>
																	<option value="Barisal">Barisal</option>
																	<option value="Bhola">Bhola</option>
																	<option value="Jhalokathi">Jhalokathi</option>
																	<option value="Patuakhali">Patuakhali</option>
																	<option value="Pirojpur">Pirojpur</option>
																	<option value="Bandarban">Bandarban</option>
																	<option value="Brahmanbaria">Brahmanbaria</option>
																	<option value="Chandpur">Chandpur</option>
																	<option value="Chattogram">Chattogram</option>
																	<option value="Cox's Bazar">Cox's Bazar</option>
																	<option value="Cumilla">Cumilla</option>
																	<option value="Feni">Feni</option>
																	<option value="Khagrachari">Khagrachari</option>
																	<option value="Lakshmipur">Lakshmipur</option>
																	<option value="Noakhali">Noakhali</option>
																	<option value="Rangamati">Rangamati</option>
																	<option value="Habiganj">Habiganj</option>
																	<option value="Moulvibazar">Moulvibazar</option>
																	<option value="Sunamganj">Sunamganj</option>
																	<option value="Sylhet">Sylhet</option>
																	<option value="Bagerhat">Bagerhat</option>
																	<option value="Chuadanga">Chuadanga</option>
																	<option value="Jashore">Jashore</option>
																	<option value="Jhenaidah">Jhenaidah</option>
																	<option value="Khulna">Khulna</option>
																	<option value="Kushtia">Kushtia</option>
																	<option value="Magura">Magura</option>
																	<option value="Meherpur">Meherpur</option>
																	<option value="Narail">Narail</option>
																	<option value="Satkhira">Satkhira</option>

																</select>
															</div>
														</div>
														<div class="w3_agileits_card_number_grid_left">
															<div class="controls">
																<label class="control-label">City</label><span class="errormsg" id="errcity"></span>
																<input name="city" id="city" class="form-control" placeholder="City" value="<?php echo $rsedit['city']; ?>">
															</div>
														</div>

														<div class="w3_agileits_card_number_grid_left">
															<div class="controls">
																<label class="control-label">Landmark</label><span class="errormsg" id="errlandmark"></span>
																<input name="landmark" id="landmark" class="form-control" placeholder="Landmark" value="<?php echo $rsedit['landmark']; ?>">
															</div>
														</div>

														<div class="w3_agileits_card_number_grid_left">
															<div class="controls">
																<label class="control-label">Post code</label><span class="errormsg" id="errpincode"></span>
																<input name="pincode" id="pincode" class="form-control" placeholder="Post Code" value="<?php echo $rsedit['pincode']; ?>">
															</div>
														</div>

														<div class="w3_agileits_card_number_grid_left">
															<div class="controls">
																<label class="control-label">Mobile number</label><span class="errormsg" id="errmobile_no"></span>
																<input name="mobile_no" id="mobile_no" class="form-control" placeholder="Mobile number" value="<?php echo $rsedit['mobile_no']; ?>">
															</div>
														</div>

													</div>
													<button class="btn btn-info" type="submit" name="submit">Update Profile</button>
												</div>
											</section>
										</form>

									</div>

									<div class="clearfix"> </div>

								</div>

							</div>
							<!-- //about -->
						</div>
						<div class="clearfix"></div>
					</div>
					<!-- //banner -->
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3"></div>
		</div>
	</div>
</div>

<?php
include("footer.php");
?>
<script>
	function validatecustomer() {
		var numericExp = /^[0-9]+$/;
		var alphaExp = /^[a-zA-Z]+$/;
		var alphaSpaceExp = /^[a-zA-Z\s]+$/;
		var alphaNumericExp = /^[0-9a-zA-Z]+$/;
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		$('.errormsg').html('');
		var errchk = "False";

		if (document.getElementById("customer_name").value.length < 8) {
			document.getElementById("errcustomer_name").innerHTML = "Customer name should contain at least 8 characters.";
			errchk = "True";
		}

		if (!document.getElementById("customer_name").value.match(alphaSpaceExp)) {
			document.getElementById("errcustomer_name").innerHTML = "Kindly enter valid Customer name..";
			errchk = "True";
		}
		if (document.getElementById("customer_name").value == "") {
			document.getElementById("errcustomer_name").innerHTML = "Customer name should not be empty...";
			errchk = "True";
		}
		if (!document.getElementById("email_id").value.match(emailExp)) {
			document.getElementById("erremail_id").innerHTML = "Entered Email ID is not valid....";
			errchk = "True";
		}
		if (document.getElementById("email_id").value == "") {
			document.getElementById("erremail_id").innerHTML = "Kindly enter Email ID.";
			errchk = "True";
		}
		if (document.getElementById("address").value == "") {
			document.getElementById("erraddress").innerHTML = "Address Should not be empty..";
			errchk = "True";
		}
		if (!document.getElementById("state").value.match(alphaSpaceExp)) {
			document.getElementById("errstate").innerHTML = "State should contain alphabets....";
			errchk = "True";
		}
		if (document.getElementById("state").value == "") {
			document.getElementById("errstate").innerHTML = "State Should not be empty..";
			errchk = "True";
		}
		if (!document.getElementById("city").value.match(alphaSpaceExp)) {
			document.getElementById("errcity").innerHTML = "City should contain alphabets....";
			errchk = "True";
		}
		if (document.getElementById("city").value == "") {
			document.getElementById("errcity").innerHTML = "City should not be empty..";
			errchk = "True";
		}
		if (!document.getElementById("landmark").value.match(alphaSpaceExp)) {
			document.getElementById("errlandmark").innerHTML = "Landmark should contain alphabets....";
			errchk = "True";
		}
		if (document.getElementById("landmark").value == "") {
			document.getElementById("errlandmark").innerHTML = "Landmark should not be empty.";
			errchk = "True";
		}
		if (document.getElementById("pincode").value.length != 4) {
			document.getElementById("errpincode").innerHTML = "PIN Code should contain 4 digits..";
			errchk = "True";
		}
		if (!document.getElementById("pincode").value.match(numericExp)) {
			document.getElementById("errpincode").innerHTML = "Post code should contain digits....";
			errchk = "True";
		}
		if (document.getElementById("pincode").value == "") {
			document.getElementById("errpincode").innerHTML = "Post Code should not be empty..";
			errchk = "True";
		}
		/*
		if(document.getElementById("mobile_no").value.length != 13)
		{
			document.getElementById("errmobile_no").innerHTML="Mobile Number should contain 10 digits..";
			errchk = "True";
		}
		*/
		if (document.getElementById("mobile_no").value == "") {
			document.getElementById("errmobile_no").innerHTML = "Mobile number should not be empty..";
			errchk = "True";
		}
		if (errchk == "True") {
			return false;
		} else {
			return true;
		}
	}
</script>
<script>
	$('#state').val('<?php echo $rsedit['state']; ?>');
	/*
	$("#mobile_no").keydown(function(e) {
	    var oldvalue=$(this).val();
	    var field=this;
	    setTimeout(function () {
	        if(field.value.indexOf('+91') !== 0) {
	            $(field).val(oldvalue);
	        } 
	    }, 1);
	});
	*/
</script>