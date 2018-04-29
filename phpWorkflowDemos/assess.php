<html>
<head>
<link rel="stylesheet" href="demo.css">
</head>

  <body>
  <H1>Javier's Directory of FAIR Repos</h1>
  
<?php if (!empty($_POST) && $_POST["submittype"] == "Submit Assessment" ): ?>
  Repo assessment submitted for: <?php echo htmlspecialchars($_POST["fair"]); ?><br>

<?php else: ?>


<!-- <?php print_r($_POST); ?>   -->
<?php if(!empty($_GET) && $_GET["sub"] == "populate" ) {
      $_POST["submittype"]="populate" ;
      $_POST["fair"]=$_GET["fair"]; 
}
?>

  <?php if ($_POST["submittype"]=="populate"): ?>
    <!-- fix the url for now -->
    <?php $real_fair_url = "http://18.220.156.186:8089"; ?>
    <?php $res1="other" ?>
    <?php $res2="other" ?>
    <?php $res3="yes" ?>
  <?php endif; ?>


  <p>logged in as: joeModerator</p>
  <h2>Assess: <u><?php echo $_POST["fair"] ?></u></h2>
  <form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?> method="post">

    <input type="hidden" name="name" value="<?php echo $name ?>">
    <table id="questions">

      <tr>
	<th>Question</th>
	<th>Yes</th>
	<th>No</th>
	<th>Yes, but:</th>
	<th>Comments</th>
      </tr>
      <tr>
	<td align="left">1. The structure of the repository permits efficient discovery of the data and metadata by users</td>
	<td align="left">
	  <input type="radio" name="res1"
		 <?php if (isset($res1) && $res1=="yes") echo "checked";?>
		 value="yes"></td>
	<td align="left"><input type="radio" name="res1"
		   <?php if (isset($res1) && $res1=="no") echo "checked";?>
		   value="no"></td>
	<td align="left"><input type="radio" name="res1"
		   <?php if (isset($res1) && $res1=="other") echo "checked";?>
		   value="other"></td>
	<td align="left">
	  <?php if ($_POST["submittype"]!="populate"): ?>
	  <input type="text" name="comment" rows="1" cols="40"></br>

	  <?php else: ?>
	  <a href=<?php echo $real_fair_url; echo "/docs" ?>><?php echo $_POST["fair"]?>/FAIR/v1</a><br>
	  <?php endif; ?>
	</td>
      </tr>

      <tr>
	<td align="left">2. The repository is available online</td>
	<td align="left">
	  <input type="radio" name="res2"
		 <?php if (isset($res2) && $res2=="yes") echo "checked";?>
		 value="yes"></td>
	<td align="left"><input type="radio" name="res2"
		   <?php if (isset($res2) && $res2=="no") echo "checked";?>
		   value="no"></td>
	<td align="left"><input type="radio" name="res2"
		   <?php if (isset($res2) && $res2=="other") echo "checked";?>
		   value="other"></td>
	<td align="left">
	  <?php if ($_POST["submittype"]!="populate"): ?>
	  <input type="text" name="comment" rows="1" cols="40"></br>
	  <?php else: ?>
	  <a href=<?php echo $real_fair_url ?>><?php echo $_POST["fair"]?></a><br>
	  <?php endif; ?>
	</td>
      </tr>

      <tr>
	<td align="left">3. The repository uses a standardized protocol to permit access by users</td>
	<td align="left">
	  <input type="radio" name="res3"
		 <?php if (isset($res3) && $res3=="yes") echo "checked";?>
		 value="yes"></td>
	<td align="left"><input type="radio" name="res3"
		   <?php if (isset($res3) && $res3=="no") echo "checked";?>
		   value="no"></td>
	<td align="left"><input type="radio" name="res3"
		   <?php if (isset($res3) && $res3=="other") echo "checked";?>
		   value="other"></td>
	<td align="left">
	  <?php if ($_POST["submittype"]!="populate"): ?>
	  <input type="text" name="comment" rows="1" cols="40"></br>
	  <?php else: ?>
	  <a href=<?php echo $real_fair_url; echo "/docs" ?>><?php echo $_POST["fair"]?>/FAIR/v1</a><br>
	  <?php endif; ?>
	</td>
      </tr>

      <tr>
	<td align="left">4. The repository provides a tutorial that describes detailed usage guidelines</td>
	<td align="left">
	  <input type="radio" name="res4"
		 <?php if (isset($res4) && $res4=="yes") echo "checked";?>
		 value="yes"></td>
	<td align="left"><input type="radio" name="res4"
		   <?php if (isset($res4) && $res4=="no") echo "checked";?>
		   value="no"></td>
	<td align="left"><input type="radio" name="res4"
		   <?php if (isset($res4) && $res4=="other") echo "checked";?>
		   value="other"></td>
	<td align="left">
	  <input type="text" name="comment" rows="1" cols="40"></br>
	</td>
      </tr>

    </table>
    
      <br>
  <input type="submit" name="submittype" value="Submit Assessment"><br>
  <br>
  <input type="submit" name="submittype" value="populate"><input type="text" name="fair" value="<?php echo $_POST["fair"]?>" rows="1" cols="40"></br>
  e.g., http://www.joesrepo.org
  <br>
  </form>

<?php endif; ?>



</body>
</html>

