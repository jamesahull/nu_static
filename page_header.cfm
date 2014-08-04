<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>The Northern Union Ltd</title>
	<meta name="description" content="Web development consultancy">
    <meta name="author" content="The Northern Union Ltd">
	
	
	<cfif isdefined("admin")>
		<cfset filePrefix = '../'>
	<cfelse>
		<cfset filePrefix = ''>
	</cfif>
	<cfoutput>
	<link href="#filePrefix#index_files/bootstrap.css" rel="stylesheet">
	<link href="#filePrefix#index_files/bootstrap-responsive.css" rel="stylesheet">
	
    <script src="#filePrefix#index_files/jquery.js"></script>
	<script src="#filePrefix#index_files/bootstrap.js"></script>
	<link href="#filePrefix#index_files/css.css" rel="stylesheet" type="text/css">
	<style>
	 /* Utility */
	.centered { text-align: center !important; }
	.inline{ display: inline !important; }
	.margin10{ margin: 10px; }
	.padding10{ padding: 10px; }
	.margin0{ margin: 0px; }
	.padding0{ padding: 0px; }
	.footer {
	  margin-top: 45px;
	  padding: 35px 35px;
	  border-top: 1px solid ##e5e5e5;
	}
	.footer p {
	  margin-bottom: 0;
	  color: ##555;
	}
	body{ padding-top: 50px; }

	h1, .brand {font-family: Marcellus;}

	p, li, h2 {font-family: Roboto;}

	.hero-unit {
		background: ##e7d6ab;
		background-image: url('#filePrefix#index_files/images/compass.jpg');
		background-position: right;
		background-repeat: no-repeat;
		
	}

	##hidey {
		display: none;
	}
	</style>
	</cfoutput>
</head>
<body data-spy="scroll">
	
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			
			<div class="container">
				
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		        </a>
				
				<a class="brand" href="index.cfm"><strong>The Northern Union</strong></a>

				
				<ul class="nav pull-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-info-sign icon-white"></i> Menu <b class="caret"></b>
						</a>
						<ul id="actions-submenu" class="dropdown-menu">
							 <li class="nav-header">Pages</li>
							 	
									<li><a href="about.cfm">About</a></li>
								
									<li><a href="contact.cfm">Contact</a></li>
								
									<cfif isdefined("admin")>
										<li><a href="logout.cfm">Log out</a></li>
									</cfif>
						</ul>
					</li>
				</ul>

			</div> 
		</div> 
	</div> 

	