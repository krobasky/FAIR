<html>
<head>
<link rel="stylesheet" href="demo.css">
</head>

<body>
  <H1>Javier's Directory of FAIR Repos: Admin pages</h1>
  
<?php if (!empty($_POST)  ): ?>
<!-- redirect to a pre-populated form -->

<?php if ($_POST["view"] == "View 1") {
      $_POST["submittype"]="populate";
      $_POST["fair"]="http://www.joesrepo.org";
      header('Location: assess.php?sub=populate&fair=joesrepo.org');
      }
      ?>

<?php if ($_POST["view"] == "View 2") {
      header('Location: assess.php?sub=populate&fair=maryscommons.org');
      }
      ?>

<?php else: ?>


<!-- <?php print_r($_POST); ?>   -->

    <!-- fix the url for now -->
    <?php $real_fair_url = "http://18.220.156.186:8089"; ?>
    <?php $request1="1" ?>
    <?php $name1="Joe's Repo" ?>
    <?php $date1="2018-04-24" ?>
    <?php $user1="jsmith" ?>
    <?php $request2="2" ?>
    <?php $name2="Mary's Commons" ?>
    <?php $date2="2017-02-03" ?>
    <?php $user2="anonymous" ?>

  <p>logged in as: joeModerator</p>
  <h2>Pending requests</h2>
  <form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?> method="post">

    <input type="hidden" name="name" value="<?php echo $name ?>">
      <table id="requests">
        <tr>
	  <th>Request</th>
	  <th>Name</th>
	  <th>Date</th>
	  <th>User</th>
	  <th></th>
	</tr>
	<tr>
	  <td><?php echo $request1; ?></td>
	  <td><?php echo $name1; ?></td>
	  <td><?php echo $date1; ?></td>
	  <td><?php echo $user1; ?></td>
	  <td><input type="submit" name="view" value="View <?php echo $request1; ?>"></td>
	</tr>
	<tr>
	  <td><?php echo $request2; ?></td>
	  <td><?php echo $name2; ?></td>
	  <td><?php echo $date2; ?></td>
	  <td><?php echo $user2; ?></td>
	  <td><input type="submit" name="view" value="View <?php echo $request2; ?>"></td>
	</tr>
      </table>
  </form>

<?php endif; ?>

</body>
</html>
