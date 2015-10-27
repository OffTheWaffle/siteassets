<?php
	session_start();
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Memorabilia Admin</title>
		<style>

		</style>
		<link rel="stylesheet" href="style.css" />
		<script type="text/javascript" src="script.js"></script>
	</head>
	<body>
		<?php
			ini_set("display_errors", 1);
			error_reporting(E_ALL);
			
			

			$userPass = "ilovewaffles123";
			$msg="";
			if(isset($_GET['out'])){
				unset($_SESSION['p']);
			}
			
			if(!isset($_SESSION['p'])){
				$_SESSION['p'] = "";
			}
			if(isset($_GET['log'])){
				if(isset($_POST['submit'])){
					$pass = $_POST['pass']; 
					if($pass != $userPass){
						$msg = "Incorrect password";
					}else{
						$_SESSION['p'] = $pass;
					}
				}
			}
			
			if($_SESSION['p'] != $userPass){
				?>
				<div id="navBar"><a href='admin.php'><img src='images/home.png' title='Home'/></a>Off The Waffle Memorabilia</div>
				<div id="wrapper">
					<h1>Login</h1>
					<div class="formContainer">
						<?php
							if(strlen($msg) > 0){
								echo "<div id='error'>$msg</div>";
							}
						?>
						<form action="admin.php?log=1" method="post">
							Password
								<br/>
								<input type="password" name="pass" value="" required/>
								<br/><br/>
							<input type="submit" name="submit" value="Login"/>
							
						</form>		
					</div>
				</div>				
				<?php
				exit;
			}
			?>
			<div id="navBar"><a href='admin.php'><img src='images/home.png' title='Home'/></a><a href='admin.php?out=1'><img src='images/logout.png' title='Logout'/></a> Off The Waffle Memorabilia</div>
			<div id="wrapper">
			<?php
			
			
			$con = mysql_connect("localhost","orset55_otw1","ilovewaffles123");
				if (!$con)
				  {
				  die('Could not connect: ' . mysql_error());
				}

				mysql_select_db("orset55_otw", $con);

			if(isset($_GET['a'])){
				if($_GET['a'] == "edit"){
					if(isset($_POST['submit'])){
						$result = mysql_query("UPDATE memorabilia SET type='".$_POST['type']."', title='".$_POST['title']."', month=".$_POST['month'].", year=".$_POST['year'].", content='".$_POST['content']."', image='".$_POST['image']."' WHERE id=".$_POST['id']."")
						or die(mysql_error()); 
						
						if($result){
							echo "Successfully updated<br/><br/>";
							echo "<a href='admin.php'>Back to Main</a>";
						}else{
							die(mysql_error());
						}
					}else{
						$result = mysql_query("SELECT * FROM `memorabilia` WHERE id='".$_GET['id']."'")
						or die(mysql_error()); 
						while($row = mysql_fetch_array($result)){
							$id = $row['id'];
							$type = $row['type'];
							$title = $row['title'];
							$month = $row['month'];
							$year = $row['year'];
							$content = $row['content'];
							$image = $row['image'];
							?>
			
				<h1>Edit</h1>
				<div class="formContainer">
				
					<form action="admin.php?a=edit" method="post">
					<input type="hidden" name="id" value="<?php echo $id;?>"/>
						<table cellpadding='0' cellspacing='0' border='0'>
							<tr>
								<td></td>
								<td>Video, audio or document</td>
							</tr>
							<tr>
								<td>
									Type
								</td>
								<td>
								  <label class="radioButtons" for="rad1">
									<input id="rad1" type="radio" name="type" value="video" <?php if($type=="video") {echo "checked";}?>/>
									<img src="../images/videoIcon.png" title="Video">
								  </label>
								  
								  <label class="radioButtons" for="rad2">
									<input id="rad2" type="radio" name="type" value="audio" <?php if($type=="audio"){echo "checked";}?>/>
									<img src="../images/audioIcon.png" title="Audio">
								  </label>
								  
								  <label class="radioButtons" for="rad3">
									<input id="rad3" type="radio" name="type" value="document" <?php if($type=="document"){echo "checked";}?>/>
									<img src="../images/documentIcon.png" title="Document">
								  </label>
								</td>
							</tr>
							<tr>
								<td></td>
								<td>Max 25 characters</td>
							</tr>
							<tr>
								<td>Title</td>
								<td><input type="text" name="title"  value="<?php echo $title;?>" required/></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>Month</td>
								<td>
									<select name="month">
										<option value="1" <?php if($month=="1"){echo "selected";}?>>January</option>
										<option value="2" <?php if($month=="2"){echo "selected";}?>>February</option>
										<option value="3" <?php if($month=="3"){echo "selected";}?>>March</option>
										<option value="4" <?php if($month=="4"){echo "selected";}?>>April</option>
										<option value="5" <?php if($month=="5"){echo "selected";}?>>May</option>
										<option value="6" <?php if($month=="6"){echo "selected";}?>>June</option>
										<option value="7" <?php if($month=="7"){echo "selected";}?>>July</option>
										<option value="8" <?php if($month=="8"){echo "selected";}?>>August</option>
										<option value="9" <?php if($month=="9"){echo "selected";}?>>September</option>
										<option value="10" <?php if($month=="10"){echo "selected";}?>>October</option>
										<option value="11" <?php if($month=="11"){echo "selected";}?>>November</option>
										<option value="12" <?php if($month=="12"){echo "selected";}?>>Decemeber</option>
									</select>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>Year</td>
								<td><input type="number" min="1990" max="2050" step="1" value="<?php echo $year;?>" name="year" /></td>
							</tr>
							<tr>
								<td></td>
								<td>Youtube video if video, mp3 link if audio and article link if document</td>
							</tr>
							<tr>
								<td>Content</td>
								<td><input type="text" name="content"  value="<?php echo $content;?>" required/></td>
							</tr>
							<tr>
								<td></td>
								<td>Only needed for document. Filename only e.g doc1.png</td>
							</tr>
							<tr>
								<td>Image</td>
								<td><input type="text" name="image" value="<?php echo $image;?>"/></td>
							</tr>
							
						</table>
						<input type="submit" name="submit" value="Save"/>
					</form>		
					</div>
							
							
							
							
							
							
							<?php
						}
					}
					
				}
				
				if($_GET['a'] == "add"){
					if(isset($_POST['submit'])){
						$result = mysql_query("INSERT INTO memorabilia VALUES (null,'".$_POST['type']."','".$_POST['title']."',".$_POST['month'].",".$_POST['year'].",'".$_POST['content']."','".$_POST['image']."')")
						or die(mysql_error()); 
						
						if($result){
							echo "Successfully added<br/><br/>";
							echo "<a href='admin.php'>Back to Main</a>";
						}else{
							die(mysql_error());
						}
				}
				}
				if($_GET['a'] == "del"){
					if(isset($_GET['c'])){
						$result = mysql_query("DELETE FROM memorabilia WHERE id=".$_GET['id'])
						or die(mysql_error()); 
						
						if($result){
							echo "Successfully deleted<br/><br/>";
							echo "<a href='admin.php'>Back to Main</a>";
						}else{
							die(mysql_error());
						}
					}else{
						echo "Are you sure?";
						echo "<br/><br/><a href='admin.php?a=del&id=".$_GET['id']."&c=true'>Yes</a> | <a href='admin.php'>Cancel</a>";
					}
				}
			}else{
				?>
				<h1>Add</h1>
				<div class="formContainer">
				
					<form action="admin.php?a=add" method="post">
						<table cellpadding='0' cellspacing='0' border='0'>
							<tr>
								<td></td>
								<td>Video, audio or document</td>
							</tr>
							<tr>
								<td>
									Type
								</td>
								<td>
								  <label class="radioButtons" for="rad1">
									<input id="rad1" type="radio" name="type" value="video" checked/>
									<img src="../images/videoIcon.png" title="Video">
								  </label>
								  
								  <label class="radioButtons" for="rad2">
									<input id="rad2" type="radio" name="type" value="audio"/>
									<img src="../images/audioIcon.png" title="Audio">
								  </label>
								  
								  <label class="radioButtons" for="rad3">
									<input id="rad3" type="radio" name="type" value="document" />
									<img src="../images/documentIcon.png" title="Document">
								  </label>
								</td>
							</tr>
							<tr>
								<td></td>
								<td>Max 25 characters</td>
							</tr>
							<tr>
								<td>Title</td>
								<td><input type="text" name="title" required/></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>Month</td>
								<td>
									<select name="month">
									<option value="1">January</option>
									<option value="2">February</option>
									<option value="3">March</option>
									<option value="4">April</option>
									<option value="5">May</option>
									<option value="6">June</option>
									<option value="7">July</option>
									<option value="8">August</option>
									<option value="9">September</option>
									<option value="10">October</option>
									<option value="11">November</option>
									<option value="12">Decemeber</option>
									</select>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>Year</td>
								<td><input type="number" min="1990" max="2050" step="1" value="2000" name="year" /></td>
							</tr>
							<tr>
								<td></td>
								<td>Youtube video if video, mp3 link if audio and article link if document</td>
							</tr>
							<tr>
								<td>Content</td>
								<td><input type="text" name="content" required/></td>
							</tr>
							<tr>
								<td></td>
								<td>Only needed for document. Filename only e.g doc1.png</td>
							</tr>
							<tr>
								<td>Image</td>
								<td><input type="text" name="image"/></td>
							</tr>
							
						</table>
						<input type="submit" name="submit" value="Add"/>
					</form>		
					</div>
				<?php
				$result = mysql_query("SELECT * FROM `memorabilia`")
				or die(mysql_error());  
				
				echo "<h1>Modify current memorabilia</h1><table cellpadding='0' cellspacing='0' border='0' class='sortable' id='sorter'><tr><th>ID</th><th>Type</th><th>Title</th><th>Month</th><th>Year</th><th>Content</th><th>Image</th><th class='nosort'>Edit</th><th class='nosort'>Delete</th></tr>";
				while($row = mysql_fetch_array($result)){
					echo "<tr>";
					echo "<td>".$row['id']."</td><td>".$row['type']."</td><td>".$row['title']."</td><td>".$row['month']."</td><td>".$row['year']."</td><td>".$row['content']."</td><td>".$row['image']."</td><td><a href='admin.php?a=edit&id=".$row['id']."'><img src='images/edit.png' title='Edit'/></a></td><td><a href='admin.php?a=del&id=".$row['id']."'><img src='images/del.png' title='Delete'/></a></td>";
					echo "</tr>";
				}
				echo "</table>";
			}
		?> 
		</div>
		<script type="text/javascript">
var sorter=new table.sorter("sorter");
sorter.init("sorter",1);
</script>
	</body>
</html>