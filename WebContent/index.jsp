<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  

	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>We Moë</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="template/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="template/fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css" href="template/css/style.css">
<link rel="stylesheet" type="text/css"
	href="template/css/prettyPhoto.css">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="template/js/modernizr.custom.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
	<div id="preloader">
		<div id="status">
			<img src="template/img/preloader.gif" height="64" width="64" alt="">
		</div>
	</div>
	<!-- Navigation -->
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-main-collapse">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top"> <i
					class="fa fa-paper-plane-o"></i> We Moë
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse navbar-right navbar-main-collapse">
				<ul class="nav navbar-nav">
					<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
					<li class="hidden"><a href="#page-top"></a></li>
					<li><a class="page-scroll" href="#about">À propos de nous</a></li>
					<li><a class="page-scroll" href="#services">Prestations de service</a></li>
					<li><a class="page-scroll" href="#works">Partenariat</a></li>
					<li><a class="page-scroll" href="#team">Équipe</a></li>
					<li><a class="page-scroll" href="#testimonials">IDENTIFICATION</a>
					</li>
					<li><a class="page-scroll" href="#contact">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Header -->
	<div id="intro">
		<div class="intro-body">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1">
						<h1>
							We <span class="brand-heading">Moë</span>
						</h1>
						<p class="intro-text">L'innovation au service de l'économie positive </p>
						<a href="#about" class="btn btn-default page-scroll">Savoir
							Plus</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- About Section -->
	<div id="about">
		<div class="container">
			<div class="section-title text-center center">
				<h2>À PROPOS DE NOUS</h2>
				<hr>
			</div>
			<div class="row">
				<div class="col-md-4">
					<img src="template/img/apropos.jpg" class="img-responsive">
				</div>
				<div class="col-md-4">
					<div class="about-text">
						<h4>Qui sommes nous</h4>
						<p> Vous êtes concernés par cette problématique ? 
						Vous avez pu emprunter, avec des exclusions ou des surprimes, ou vous avez dû renoncer à votre projet</p>
						<p> Afin de proposer des contrats d’assurances  aidés à des personnes en risque aggravés de santé, We Moë désire mettre en place une plateforme afin d’apporter des aides et des informations à ce type d’emprunteur</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="about-text">
						<h4>Ce que nous faisons</h4>
						<p>we moë souhaite proposer un nouveau moyen de garantir les emprunts bancaires
						 des personnes en situation de risque de santé de façon financièrement et humainement soutenable.</p>
						<ul>
							<li>Aidez-nous à mieux comprendre vos attentes dans la recherche d'une assurance emprunteur</li>
							<li>Participation à notre enquête ANONYME et INDEPENDANTE. </li>
							<li>partager ce questionnaire auprès de vos proches et sur les réseaux sociaux. </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Services Section -->
	<div id="services" class="text-center">
		<div class="container">
			<div class="section-title center">
				<h2>Nos services</h2>
				<hr>
			</div>
			<div class="space"></div>
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="service">
						<i class="fa fa-desktop"></i>
						<h3>Web Design</h3>
						<p>Lorem ipsum dolor sit amet placerat facilisis felis mi in
							tempus eleifend pellentesque natoque etiam.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="service">
						<i class="fa fa-cogs"></i>
						<h3>Web Development</h3>
						<p>Lorem ipsum dolor sit amet placerat facilisis felis mi in
							tempus eleifend pellentesque.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="service">
						<i class="fa fa-tablet"></i>
						<h3>App Design</h3>
						<p>Lorem ipsum dolor sit amet placerat facilisis felis mi in
							tempus eleifend pellentesque natoque etiam.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="service">
						<i class="fa fa-html5"></i>
						<h3>PSD to HTML5</h3>
						<p>Lorem ipsum dolor sit amet placerat facilisis felis mi in
							tempus eleifend pellentesque natoque.</p>
					</div>
				</div>
			</div>
			<div class="space"></div>
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="service">
						<i class="fa fa-wordpress"></i>
						<h3>WordPress</h3>
						<p>Lorem ipsum dolor sit amet placerat facilisis felis mi in
							tempus eleifend pellentesque natoque etiam.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="service">
						<i class="fa fa-bullhorn"></i>
						<h3>Marketing</h3>
						<p>Lorem ipsum dolor sit amet placerat facilisis felis mi in
							tempus eleifend pellentesque.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="service">
						<i class="fa fa-rocket"></i>
						<h3>Branding</h3>
						<p>Lorem ipsum dolor sit amet placerat facilisis felis mi in
							tempus eleifend pellentesque natoque etiam.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="service">
						<i class="fa fa-leaf"></i>
						<h3>Print Design</h3>
						<p>Lorem ipsum dolor sit amet placerat facilisis felis mi in
							tempus eleifend pellentesque natoque.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- Portfolio Section -->
	<div id="works">
		<div class="container">
			<!-- Container -->
			<div class="section-title text-center center">
				<h2>Soutenu Par</h2>
				<hr>
				<div class="clearfix"></div>
				<p>      </p>
			</div>
			<div class="categories">
				<ul class="cat">
					<li>
						<ol class="type">
							<li><a href="#" data-filter="*" class="active">All</a></li>
							<li><a href="#" data-filter=".lorem">Banques & assurances</a></li>
							<li><a href="#" data-filter=".consectetur"> Associations</a></li>
							<li><a href="#" data-filter=".dapibus">Autre</a></li>
						</ol>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="row">
				<div class="portfolio-items">
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 lorem">
						<div class="portfolio-item">
							<div class="hover-bg">
								<a href="template/img/portfolio/arkea.jpg"
									title="Project description" rel="prettyPhoto">
									<div class="hover-text">
										<h4>Project Title</h4>
										<p>Web Design</p>
									</div> <img src="template/img/portfolio/arkea.jpg"
									class="img-responsive" alt="Project Title">
								</a>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 consectetur">
						<div class="portfolio-item">
							<div class="hover-bg">
								<a href="template/img/portfolio/active2.JPG"
									title="Project description" rel="prettyPhoto">
									<div class="hover-text">
										<h4>Project Title</h4>
										<p>Web Development</p>
									</div> <img src="template/img/portfolio/active2.JPG"
									class="img-responsive" alt="Project Title">
								</a>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 lorem">
						<div class="portfolio-item">
							<div class="hover-bg">
								<a href="template/img/portfolio/tag.png"
									title="Project description" rel="prettyPhoto">
									<div class="hover-text">
										<h4>Project Title</h4>
										<p>Web Design</p>
									</div> <img src="template/img/portfolio/tag.png"
									class="img-responsive" alt="Project Title">
								</a>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 lorem">
						<div class="portfolio-item">
							<div class="hover-bg">
								<a href="template/img/portfolio/harmonie.png"
									title="Project description" rel="prettyPhoto">
									<div class="hover-text">
										<h4>Project Title</h4>
										<p>Web Design</p>
									</div> <img src="template/img/portfolio/harmonie.png"
									class="template/img-responsive" alt="Project Title">
								</a>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 consectetur">
						<div class="portfolio-item">
							<div class="hover-bg">
								<a href="template/img/portfolio/entre2.jpg"
									title="Project description" rel="prettyPhoto">
									<div class="hover-text">
										<h4>Project Title</h4>
										<p>Web Development</p>
									</div> <img src="template/img/portfolio/entre2.jpg"
									class="img-responsive" alt="Project Title">
								</a>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 dapibus">
						<div class="portfolio-item">
							<div class="hover-bg">
								<a href="template/img/portfolio/yao.jpeg"
									title="Project description" rel="prettyPhoto">
									<div class="hover-text">
										<h4>Project Title</h4>
										<p>Branding</p>
									</div> <img src="template/img/portfolio/yao.jpeg"
									class="img-responsive" alt="Project Title">
								</a>
							</div>
						</div>
					</div>
					<div
						class="col-xs-6 col-sm-6 col-md-3 col-lg-3 dapibus consectetur">
						<div class="portfolio-item">
							<div class="hover-bg">
								<a href="template/img/portfolio/tick.png"
									title="Project description" rel="prettyPhoto">
									<div class="hover-text">
										<h4>Project Title</h4>
										<p>Web Development, Branding</p>
									</div> <img src="template/img/portfolio/tick.png"
									class="img-responsive" alt="Project Title">
								</a>
							</div>
						</div>
					</div>
		<!--   	<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 lorem">
						<div class="portfolio-item">
							<div class="hover-bg">
								<a href="template/img/portfolio/08.jpg"
									title="Project description" rel="prettyPhoto">
									<div class="hover-text">
										<h4>Project Title</h4>
										<p>Web Design</p>
									</div> <img src="template/img/portfolio/08.jpg"
									class="img-responsive" alt="Project Title">
								</a>
							</div>
						</div>
					</div>    -->
				</div>
			</div>
		</div>
	</div>
	
	
	
	<!-- Team Section -->
	<div id="team" class="text-center">
		<div class="container">
			<div class="section-title center">
				<h2>L'ÉQUIPE</h2>
				<hr>
				<p>La genèse du projet trouve son origine dans son histoire personnelle.</p>
			</div>
			<div id="row">
				<div class="col-xs-6 col-md-3 col-sm-6">
					<div class="thumbnail">
						<img src="template/img/team/gaidin.jpg" alt="..."
							class="img-thumbnail team-img">
						<div class="caption">
							<h3>Gaïdig Le Moing</h3>
							<p>Porteuse du Projet</p>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-sm-6">
					<div class="thumbnail">
						<img src="template/img/team/tomy.jpg" alt="..."
							class="img-thumbnail team-img">
						<div class="caption">
							<h3>Tony Bougaran</h3>
							<p>Architecte</p>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-sm-6">
					<div class="thumbnail">
						<img src="template/img/team/Christine.jpg" alt="..."
							class="img-thumbnail team-img">
						<div class="caption">
							<h3>Christine Le Carre</h3>
							<p>Responsable Ressources Humaines</p>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-sm-6">
					<div class="thumbnail">
						<img src="template/img/team/delphine.jpg" alt="..."
							class="img-thumbnail team-img">
						<div class="caption">
							<h3>Delphine Lucas</h3>
							<p>Chargée de communication numérique</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Identification Section -->
	<div id="testimonials" class="text-center">
		<div class="container">
			<div class="section-title center">
				<h2>inscription ou connexion</h2>
				<hr>
			</div>

			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="row testimonials">
						<div class="col-sm-6">
							<blockquote>
								<i class="fa fa-quote-left"></i>

								<form name="sentMessage" id="contactForm" action = "enregistrementMembre" novalidate >
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<input type="text" id="name" class="form-control"
													placeholder="Nom" required="required" value="${v.valeurs['nom']}">
													<input type="text" id="name" class="form-control"
													placeholder="Prenom" required="required" value="${v.valeurs['prenom']}">
												<p class="help-block text-danger"></p>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<input type="email" id="email" class="form-control"
													placeholder="Email" required="required"> <input
													type="password" id="password" class="form-control"
													placeholder="Password" required="required">

												<p class="help-block text-danger"></p>

											</div>
										</div>
										<div>
											<input type="radio" name="ras" value="nuit"> ras <input
												type="radio" name="ras" value="week-end"> non ras
										</div>
									</div>




									<div id="success"></div>
									<button type="submit" class="btn btn-default">inscription</button>
								</form>
							</blockquote>
						</div>


						<!-- connexion  -->
						<div class="col-sm-6">
							<blockquote>
								<i class="fa fa-quote-left"></i>

								<h3></h3>

								<div class="col-md-8 col-md-offset-2">

									<form name="sentMessage" id="contactForm" novalidate>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<input type="email" id="email" class="form-control"
														placeholder="Email" required="required">

													<p class="help-block text-danger"></p>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<input type="password" id="password" class="form-control"
														placeholder="Password" required="required">
													<p class="help-block text-danger"></p>
												</div>
											</div>
										</div>

										<div id="success"></div>
										<button type="submit" class="btn btn-default">connexion</button>
									</form>
								</div>
							</blockquote>
						</div>
						<!--  fin de connexion  -->

					</div>
				</div>
			</div>
		</div>
	</div>

	</div>




	<!-- Contact Section -->
	<div id="contact" class="text-center">
		<div class="container">
			<div class="section-title center">
				<h2>Contactez nous</h2>
				<hr>
				<p> </p>
			</div>
			<div class="col-md-8 col-md-offset-2">
				<div class="col-md-4">
					<div class="contact-item">
						<i class="fa fa-map-marker fa-2x"></i>
						<p>
							138 rue jean jaurés ,<br> Brest, 29200
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="contact-item">
						<i class="fa fa-envelope-o fa-2x"></i>
						<p>contact@we-moe.fr</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="contact-item">
						<i class="fa fa-phone fa-2x"></i>
						<p>
						 (+33)	08 92 97 63 01<br>
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-8 col-md-offset-2">
				<h3>Laissez-nous un message</h3>
				<form name="sentMessage" id="contactForm" novalidate>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" id="name" class="form-control"
									placeholder="Name" required="required">
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="email" id="email" class="form-control"
									placeholder="Email" required="required">
								<p class="help-block text-danger"></p>
							</div>
						</div>
					</div>
					<div class="form-group">
						<textarea name="message" id="message" class="form-control"
							rows="4" placeholder="Message" required></textarea>
						<p class="help-block text-danger"></p>
					</div>
					<div id="success"></div>
					<button type="submit" class="btn btn-default">Envoyer le message</button>
				</form>
				<div class="social">
					<h3>Suivez nous</h3>
					<ul>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
						<li><a href="#"><i class="fa fa-github"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="container">
			<p>
				Copyright &copy; Modus. Designed by <a
					href="http://www.templatewire.com" rel="nofollow">TemplateWire</a>
			</p>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="template/js/jquery.1.11.1.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/javascript" src="template/js/bootstrap.js"></script>
	<script type="text/javascript" src="template/js/SmoothScroll.js"></script>
	<script type="text/javascript" src="template/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="template/js/jquery.isotope.js"></script>
	<script type="text/javascript" src="template/js/jquery.parallax.js"></script>
	<script type="text/javascript"
		src="template/js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="template/js/contact_me.js"></script>

	<!-- Javascripts
    ================================================== -->
	<script type="text/javascript" src="template/js/main.js"></script>
</body>
</html>