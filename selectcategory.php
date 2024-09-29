<head>
	<link rel="stylesheet" href="css/categories.css">
	<!-- Other meta tags and links -->
</head>

<?php
include("header.php");
if (!isset($_SESSION["customer_id"])) {
	echo "<SCRIPT>window.location='customerlogin.php';</SCRIPT>";
}
?>
<!-- banner -->
<div class="banner">
	<?php include("sidebar.php"); ?>
	<div class="w3l_banner_nav_right">
		<h2>Select category</h2>
		<div class="row">
			<?php
			$sql = "SELECT category.*, COUNT(product.category_id) as ad_count 
                    FROM category 
                    LEFT JOIN product ON category.category_id = product.category_id 
                    WHERE category.status = 'Active'
                    GROUP BY category.category_id";
			$qsql = mysqli_query($con, $sql);
			while ($rs = mysqli_fetch_array($qsql)) {
				if (file_exists("imgcategory/" . $rs['category_icon'])) {
					$imgname = "imgcategory/" . $rs['category_icon'];
				} else {
					$imgname = "img/No-Image-Available.png";
				}
			?>
				<div class="col-md-3 col-sm-6 col-xs-12 category-card" style="text-align:center;">
					<div class="category-box" onclick='window.location=`product.php?categoryid=<?php echo $rs['category_id']; ?>`' style="cursor:pointer;">
						<img src="<?php echo $imgname; ?>" class="img-responsive category-icon" alt="<?php echo $rs['category_name']; ?>">
						<h4 class="category-name"><?php echo $rs['category_name']; ?></h4>
						<p class="ad-count"><?php echo $rs['ad_count']; ?> ads</p>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
	<div class="clearfix"></div>
</div>
<!-- //banner -->
<?php include("footer.php"); ?>