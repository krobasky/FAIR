<html>
<body>
<H1>Janet's Honest Broker</h1>
  
<?php if (!empty($_POST)): ?>
  Request for assessment and registration submitted for: <a href="http://18.220.156.186:8089/docs"> <b><?php echo htmlspecialchars($_POST["name"]); ?></a></b><br>
Thank you for your submission, your site has been submitted to the following registries:
<ul>
  <br><a href="http://18.220.156.186/assess.php">Javier's Directory of FAIR repos</a>
  <br><a href="http://18.220.156.186/create_db_rec.php">Sinbad's Directry of FAIR databases</a>
  </ul>
<?php else: ?>

<p>logged in as: Guest (<a href="">log in</a> now)</p>

<h2>Register with multiple directories:</h2>
<p> Please submit your FAIR-API-enabled repository's URL to be registered and FAIR-scored with multiple directories.
<br>  
<br>  
  <form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?> method="post">
    <input type="submit"> <textarea name="name" rows="1" cols="40"><?php echo $_POST["name"]?></textarea> <br>
      e.g., <b>http://joesrepo.org/FAIR/v1/ </b>
  <br>
</form>

<?php endif; ?>

</body>
</html>
