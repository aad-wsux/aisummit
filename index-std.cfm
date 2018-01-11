<!DOCTYPE html>
<html lang="en" itemscope itemtype="http://schema.org/WebSite" xmlns:vertical-align="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Artificial Intelligence in Advancement | Alumni, Parents, and Friends | Cornell University</title>
    <meta name="description" content="The goal of this conference is to provide attendees with an understanding of basic AI concepts and to identify and discuss advancement functions that might be enhanced or transformed by AI." />
    <!-- Schema.org markup for Google+ -->
    	<meta itemprop="name" content="Artificial Intelligence in Advancement | Alumni, Parents, and Friends | Cornell University">
		<meta itemprop="description" content="The goal of this conference is to provide attendees with an understanding of basic AI concepts and to identify and discuss advancement functions that might be enhanced or transformed by AI.">
    <!-- Twitter Card data -->
		<meta itemprop="image" content="https://app.aad.cornell.edu/aisummit/assets/images/backgrounds/header.jpg">
    	<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@cornellAlumni">
		<meta name="twitter:title" content="Artificial Intelligence in Advancement | Alumni, Parents, and Friends | Cornell University">
		<meta name="twitter:description" content="The goal of this conference is to provide attendees with an understanding of basic AI concepts and to identify and discuss advancement functions that might be enhanced or transformed by AI.">
		<meta name="twitter:creator" content="@cornellAlumni">
    <!-- Open Graph data -->
        <meta property="og:title" content="Artificial Intelligence in Advancement | Alumni, Parents, and Friends | Cornell University" />
        <meta property="og:type" content="website" />
        <meta property="og:url" content="https://alumni.cornell.edu/aisummit" />
        <meta property="og:image" content="https://app.aad.cornell.edu/aisummit/assets/images/backgrounds/header.jpg" />
        <meta property="og:description" content="The goal of this conference is to provide attendees with an understanding of basic AI concepts and to identify and discuss advancement functions that might be enhanced or transformed by AI." />
        <meta property="og:site_name" content="Alumni, Parents, and Friends | Cornell University" />

    <!-- css -->
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bower_components/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/main.css">
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-111430295-1"></script>
	<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());
	gtag('config', 'UA-111430295-1');
	</script>
</head>
<body data-spy="scroll" data-target="#site-nav">
    <nav id="site-nav" class="navbar navbar-fixed-top navbar-custom">
        <div class="container">
            <div class="navbar-header">

                <!-- logo -->
                <div class="site-branding">
                    <a class="logo" href="#">
                        <!-- logo image  -->
                        <img src="assets/images/cornell-reduced-white.svg" alt="Cornell Logo" height="45px;">
                    </a>
                </div>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-items" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div><!-- /.navbar-header -->

            <div class="collapse navbar-collapse" id="navbar-items">
                <ul class="nav navbar-nav navbar-right">
                    <!-- navigation menu -->
                    <li class="active"><a data-scroll href="#">AI in Advancement Summit</a></li>
                    <li><a data-scroll href="#about">About</a></li>
                    <li><a data-scroll href="#location">Location</a></li>
                
                </ul>
            </div>
        </div><!-- /.container -->
    </nav>

    <header id="site-header" class="site-header valign-center">
        <div class="intro">
            
            <h1 style="margin-top: 80px;">Artificial&nbsp;Intelligence (AI)<br>in Advancement Summit</h1>
            
            <h2>February 16, 2018 - Ithaca, NY</h2>
            
            <p>&nbsp;</p>
            
            <!-- a class="btn btn-white" data-scroll href="#registration">Register Now</a -->
            <div class="container">
            <cfif isDefined("form.submit")>
            	<cfquery name="get_id" datasource="#request.dsn#">
                	SELECT MAX(ID) AS newid FROM EMAIL_LIST
                </cfquery>
                <cfif isDefined("get_id.newid") and get_id.newid gt 1>
                	<cfset newid = get_id.newid + 1> 
                <cfelse>
                    <cfset newid = 1>
                </cfif>
                
                <cfquery name="email_insert" datasource="#request.dsn#">
                	INSERT INTO EMAIL_LIST 
                    	( ID, FNAME, LNAME, INSTITUTION, EMAIL, NOTIFY_TYPE )
                    VALUES
                    	( #newid#, 
                        <cfqueryparam value = "#form.fname#" cfsqltype="CF_SQL_VARCHAR">, 
                        <cfqueryparam value = "#form.lname#" cfsqltype="CF_SQL_VARCHAR">, 
                        <cfqueryparam value = "#form.institution#" cfsqltype="CF_SQL_VARCHAR">, 
                        <cfqueryparam value = "#form.email#" cfsqltype="CF_SQL_VARCHAR">,
                        'aisummit')                        
                </cfquery>
                <cfoutput>
                    <h4> Thank you</h4>
                	<p> We've received your contact information.  We will email you when registration is open.</p>
                </cfoutput>
				<!-- Form message body -->
			   <cfsavecontent variable="messageBody">
				<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
				<html>
				<head>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
				<title>AI in Advancement Summit</title>
				</head>
				<body>
				<cfoutput>
				<style type="text/css"> 
				body { margin: 0; padding: 0; }
				</style>
					<p>Dear #Trim(FORM.fname)# #Trim(FORM.lname)#,</p>
					<p>Thank you for signing up! We've received your contact information.  We will email you when registration is open.</p>
					
					<p>Best,</p>
					<p>AI in Advancement Summit</p>
				</cfoutput>
				</body>
				</html>
				</cfsavecontent>				
				<!-- Send confirmation email -->			
				<cfmail to="#Trim(FORM.email)#"  
					from="AI in Advancement Summit <eag237@cornell.edu>"
						subject="Confirmation of joining AI Summit mailing list"
						type="html">  
                #messageBody# 
					
				</cfmail>  			
							
                <cfelse>
                    <cfform action="/aisummit/index.cfm" method="post">
                        <h4>Stay connected</h4>
                        <p>Registration will be open soon. Sign up to be notified when it goes live.</p>
                        <div class="form-group">
                            <div class="row">
                                <label style="float: left;">First name: </label>
                                <label style="padding-left:25%;float: left;">Last name: </label>
                            </div>
                            <div class="row">
                                <cfinput type="text" id="fname" name="fname" style="width: 45%;" message="First name is required." required="yes" maxLength="50" validate="required">
                                <cfinput type="text" id="lname" name="lname" style="width: 45%;" message="Last name is required." required="yes" maxLength="50" validate="required">
                            </div>
                        </div>
                        <div class="form-group" >
                            <div class="row">
                                <label style="float: left;">Institution/Company: </label>
                            </div>
                            <div class="row">
                                <cfinput type="text" id="institution" name="institution" style="width:92%;" message="Institution is required." required="yes" maxLength="200" validate="required">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <label style="float: left;">Email: </label>
                            </div>
                            <div class="row">
                                <cfinput type="email" id="email" name="email" style="width:92%;" message="Email is required." required="yes" maxLength="100" validate="required" >
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" name="submit" class="btn btn-primary" style="height:40px; margin:auto;">Subscribe</button>
                        </div>
                    </cfform>         
                 </cfif> 
            </div>
        </div>
    </header>

    <section id="about" class="section about">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">

                    <h3 class="section-title">About Us</h3>

                    <p>Hosted by Cornell University's Division of <a href="https://alumni.cornell.edu/" target="_blank">Alumni Affairs and Development,</a> in partnership with Ithaca College, Keuka College,
Skidmore College, Syracuse University, Union College, and Virginia Tech, and supported by an award from the CASE District II Venture Capital Fund.</p>
 
<p>AI’s moment has arrived. Thanks to innovations such as self-driving cars and to speech-based interfaces like Apple’s Siri and Amazon’s Alexa, AI is finding its way into applications that seem less exotic and more accessible. The fusion of massive data sets, behavioral algorithms, predictive algorithms, new types of user interfaces, and machine learning is opening up new horizons of possibility for the practical application of AI. Many emerging tools and techniques have the potential to change core engagement, fundraising, and communications functions of institutional advancement offices.</p>
					<p>Questions? Please e-mail <a href="mailto:eag237@cornell.edu?subject=AI%20Summit%20Questions">Emily Gustafson</a>.</p>

                    <!-- figure>
                        <img alt="" class="img-responsive" src="assets/images/about-us.jpg">
                    </figure -->

                </div><!-- /.col-sm-6 -->

                <div class="col-sm-6">

                    <h3 class="section-title multiple-title">Summit goals</h3>

                    <ul class="list-arrow-right">

                        <li>Provide attendees with an understanding of basic AI concepts, the current state of the field, and emerging trends. Attendees will leave the summit with the knowledge needed to follow developments in AI from an informed perspective – recognizing opportunities and decoding the jargon that pervades media coverage and marketing materials.</li>
                        <li>Identify and discuss advancement functions that might be enhanced or transformed by AI. These discussions will form the nucleus of a community of advancement practitioners that will grow over time, organizing itself around use cases of interest to participants.</li>
                    </ul>
                    
                    <p>The summit is open to institutions in CASE District II, as well as interested staff from institutions in other CASE districts and technology partners.</p>

                </div><!-- /.col-sm-6 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section>

    <section id="facts" class="section bg-image-1 facts text-center">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">

                    <i class="ion-ios-calendar"></i>
                    <h3>February 16, 2018</h3>
                
                </div>
                <div class="col-sm-3">

                    <i class="ion-ios-location"></i>
                    <h3>Ithaca, NY<br></h3>
                
                </div>
                <div class="col-sm-3">

                    <i class="ion-pricetags"></i>
                    <h3>100 expected attendees</h3>
                
                </div>
                <div class="col-sm-3">
                
                    <i class="ion-speakerphone"></i>
                    <h3>6 speakers</h3>
                
                </div>
            </div><!-- row -->
        </div><!-- container -->
    </section>

    <section id="location" class="section location">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <h3 class="section-title">Event Location</h3>
                    <address>
                        <p><h4><a href="https://statlerhotel.cornell.edu/">The Statler Hotel at Cornell University</a></h4><br><br>130 Statler Drive, Ithaca, NY 14850
						<br>Phone: (607) 257-2500  
						<br>Fax: 607-257-6432
						<br>Email: statler_reserve@cornell.edu</p>
                    </address>
                </div>
                <div class="col-sm-9">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2944.123517071899!2d-76.48449868401558!3d42.4463879791813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d0818b0848a40f%3A0x14dd1f9150f89ebd!2sThe+Statler+Hotel+at+Cornell+University!5e0!3m2!1sen!2sus!4v1512161245826" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>

    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    
                    <div>
				<!-- a href="https://www.cornell.edu/"><img src="assets/images/cornell-logo.svg" alt="Cornell University" width="188" height="26"></a -->
                    <h4>Cornell University</h4>
					<p>Division of Alumni Affairs and Development<br>130 E. Seneca Street, Suite 400<br>Ithaca, NY 14850<p>
				    </div>
                </div>
                <div class="col-md-6">
                    <ul class="social-block">
                        <li><a href="https://twitter.com/cornellalumni"><i class="ion-social-twitter"></i></a></li>
                        <li><a href="https://www.facebook.com/cornellalumniassociation"><i class="ion-social-facebook"></i></a></li>
                        <li><a href="https://www.linkedin.com/groups/958"><i class="ion-social-linkedin"></i></a></li>
                        <li><a href="https://www.instagram.com/cornellalumni/"><i class="ion-social-instagram-outline"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <!-- script -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="bower_components/smooth-scroll/dist/js/smooth-scroll.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>
</html>