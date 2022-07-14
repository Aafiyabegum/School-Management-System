<?php
	include"database.php";
	session_start();
	if(!isset($_SESSION["AID"]))
	{
		echo"<script>window.open('index.php?mes=Access Denied..','_self');</script>";
		
	}		
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Institute Information</title>
		<link rel="shortcut icon" href="img/logo.jpg" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" href="css/scrollup.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
	</head>
	<body>
	
		<?php include"navbar.php";?><br>
		
		
		<!-- <img src="img/a1.jpeg" style="margin-left:90px; height: 200px; width: 100%;" class="sha"> -->
			
			<div id="section">
			
				<?php include"sidebar.php";?><br>
				
				<div class="content" style="width:800px;">
					<h3 class="text" style="color: black;">Welcome <?php echo $_SESSION["ANAME"]; ?></h3><br><hr><br>
						<h3 style="color: black;"> Institute Information</h3><br>
					<img src="img/h.jpeg" class="imgs">
					<p class="para">
						“Thakshilawa” is a higher educational Institute located near to Colombo Sri Lanka, which provides education facilities for School Children. 
						Thakshilawa was established in 1986 DEC 27 under the provisions of the 
						National Institute of Education Act No. 28 of 1985 and commenced operations at Main Road, Colombo.
					</p>
					
					<p class="para">
						This Institute system has a powerful system to bring lecturers and students on a common interactive platform. 
						It is a paperless office automation solution for today's modern Institute.
					</p>

					<p class="para">
						Thakshilawa's students are a snapshot of an increasingly Sri Lankan community. our student community is diverse and vibrant. 
						Thakshilawa's Lecturers are highly accomplished academics from both Sri Lankan and International Universities, 
						offering specialized academic guidance with a strong emphasis on practical skills.
					</p>

				</div>
				
			</div>
	
		<?php include"footer.php";?>
		<a class="gotopbtn" href="#"> <i class="fas fa-arrow-up"></i> </a>
