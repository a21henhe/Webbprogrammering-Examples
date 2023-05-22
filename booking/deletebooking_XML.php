<?PHP
			include 'dbconnect.php';

			if(empty($_POST)){
					$_POST=json_decode(file_get_contents('php://input', false),true);
			}

			// Get and escape the variables from post
			$resource=getpostAJAX("resourceID");
			$date=getpostAJAX("date");
				header ("Content-Type:text/xml; charset=utf-8");  
				echo '<deleted status="OK"/>';
			} catch (PDOException $e) {
			    err("Error!: ".$e->getMessage()."<br/>");
			    die();
			}
?>
