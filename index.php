<!DOCTYPE html>
<html lang="en">
	<head>
		<title>VPN - Stats</title>
		<meta charset="utf-8">
		<meta http-equiv="refresh" content="10">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="panel panel-default">
			<div class="panel-heading"><h4><img src="data:image/png;base64,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" width="50" height="50">VPN - Stats</h4></div>
			<div class="panel-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Name</th>
							<th>IP</th>
							<th>TX</th>
							<th>RX</th>
						</tr>
					</thead>
					<tbody>
						<?php
						require_once('stats.txt'); 
						?>
					</tbody>
				</table>
			</div>
		</div>
	</body>
</html>