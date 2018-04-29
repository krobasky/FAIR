<html>
<body>
  <H1>Sinbad's Directory of FAIR Repos</h1>
  
<?php if (!empty($_POST) && $_POST["submittype"] == "Save" ): ?>
  New repo record submitted for: <a href="<?php echo $_POST["fair"]; ?>"><?php echo htmlspecialchars($_POST["fair"]); ?></a><br>

<?php else: ?>


<!-- <?php print_r($_POST); ?>   -->

  <?php if ($_POST["submittype"]=="populate"): ?>
    <!-- fix the url for now -->
    <?php $real_fair_url = "http://18.220.156.186:8089"; ?>

    <!-- fudge for now -->
    <?php $homepage = $_POST["fair"]?>
    <?php $dbname = "Joe's repo"; ?>
    <?php $abbreviation = "JR"; ?>
    <?php $creation_year = "1986"; ?>
  <?php endif; ?>


  <?php $name = "Joe's Repo"; ?>
    <h1>Create new database information record</h1>
  <form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?> method="post">
    <br> 
  <center>
    <input type="submit" name="submittype" value="Save">
</center>
  <br>
  <h2>General Infomration</h2>
  
    <table >

      <tr>
	<td align="left">Full Name of Database</td>
	<td align="left">Homepage</td>
      </tr>
      <tr>
	<td align="left">
	  <textarea name="dbname" rows="1" cols="40">
	  <?php if ($_POST["submittype"]=="populate") { echo $dbname; } else { ?>
	  <?php } ; ?>
	  </textarea><br>
	</td>
	<td align="left">
	  <?php if ($_POST["submittype"]=="populate") { echo "<a href='$homepage'>$homepage</a>"; } else { ?>
	  <textarea name="homepage" rows="1" cols="40">
	  </textarea><br>
	  <?php } ; ?>
	</td>
      </tr>

            <tr>
	<td align="left">Abbreviation</td>
	<td align="left">Year of Creation</td>
      </tr>
      <tr>
	<td align="left">
	  <textarea name="abbreviation" rows="1" cols="40">
	  <?php echo $abbreviation?>
	  </textarea><br>
	</td>
	<td align="left">
	  <textarea name="creation_year" rows="1" cols="40">
	    <?php echo $creation_year?>
	  </textarea><br>
	</td>
      </tr>

    </table>
    
      <br>
      <input type="submit" name="submittype" value="populate"><input type="text" name="fair" value="<?php echo $_POST["fair"]?>"rows="1" cols="40"><br>
      e.g., http://www.joesrepo.org
  <br>
  </form>

<?php endif; ?>



</body>
</html>

