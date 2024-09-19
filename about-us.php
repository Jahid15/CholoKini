<?php
include("header.php");
?>
            
            <!-- breadcrumb-area start -->
            <div class="breadcrumb-area bg-gray">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="breadcrumb-list">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">About us</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumb-area end -->
            
            <!-- content-wraper start -->
            <div class="content-wraper mt-95">
                <div class="container">
                    <div class="row ">
                        <div class="col-lg-6">
                            <div class="about-us-img">
                                <img alt="" src="images/online-auction.jpg">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="about-info-wrapper">
                                <h2>Our company</h2>
<p>Welcome to CholoKini – Bangladesh's First Online Auction Platform!

At CholoKini, we believe in fairness for everyone. Our mission is simple: to help you get the right price for everything. Whether you're selling or buying, CholoKini offers a transparent and competitive marketplace where every item finds its true value. Inspired by global auction platforms, CholoKini connects you with buyers and sellers nationwide, ensuring that each deal is fair and rewarding.

Join CholoKini today – where fairness meets opportunity, and every bid counts!</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wraper end -->
            
            <div class="project-count-area bg-gray pt-80 pb-50 mt-95">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-count text-center mb-30">
                                <div class="count-icon">
                                    <span class="ion-ios-briefcase-outline"></span>
                                </div>
                                <div class="count-title">
                                    <h2 class="count">
<?php 
$sql ="SELECT * FROM customer";
$qsql = mysqli_query($con,$sql);
echo  mysqli_num_rows($qsql); 
?>
									</h2>
                                    <span>Customers</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-count text-center mb-30">
                                <div class="count-icon">
                                    <span class="ion-ios-wineglass-outline"></span>
                                </div>
                                <div class="count-title">
                                    <h2 class="count"><?php 
$sql ="SELECT * FROM product";
$qsql = mysqli_query($con,$sql);
echo  mysqli_num_rows($qsql); 
?></h2>
                                    <span>Auction Products</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-count text-center mb-30">
                                <div class="count-icon">
                                    <span class="ion-ios-lightbulb-outline"></span>
                                </div>
                                <div class="count-title">
                                    <h2 class="count"><?php 
$sql ="SELECT * FROM bidding";
$qsql = mysqli_query($con,$sql);
echo  mysqli_num_rows($qsql); 
?></h2>
                                    <span>biddings</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-count text-center mb-30">
                                <div class="count-icon">
                                    <span class="ion-happy-outline"></span>
                                </div>
                                <div class="count-title">
                                    <h2 class="count"><?php 
$sql ="SELECT * FROM winners";
$qsql = mysqli_query($con,$sql);
echo  mysqli_num_rows($qsql); 
?></h2>
                                    <span>Winners</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
<?php
include("footer.php");
?>