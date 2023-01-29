<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package s14.local
 */

?>

<section class="banner" style="background-image: url(/wp-content/themes/s14-local/assets/rectangle.png);">
  <h1>Help us tell the <br>African Story</h1>
  <button class="button">Donate <i class="fa fa-angle-right"></i></button>
 </section> 
    <!-- <img src="/wp-content/themes/s14-local/assets/rectangle.png" alt="Rectangle"> -->
  
  
  

 	<footer id="colophon" class="site-footer">
<!-- 		<div class="site-info">
			<body <?php //body_class(); ?>>
<?php //wp_body_open(); ?> -->


<div id="page" class="site-footer">

	<!-- <hr class="bottom-rule"> -->

	<!-- <div class="Footer-bar">

		<?php
				// wp_nav_menu(
				// 	array(
				// 		'theme_location' => 'menu-3',
				// 		'menu_id'        => 'Footer',
				// 	)
				// );
			?> 

	</div> -->

  <!-- <div id="page" class="site">
    <header id="masthead" class="site-header">
    header
  </header> -->


  <div id="footer" class="site-footer">
 

	<div class="container">
    <div class="row">

      <div class="col-md-3">
        <h6>Our Mission</h6>
        <p class="text-justify">The Royal African Society is a membership <br> organization that provides opportunities for people<br> to connect,celebrate and engage critically with a<br> wide range of topics and ideas about Africa today. <br> We amplify African voices and interests in academia,<br> business, politics, the arts and education, reaching a<br> network of more than one million people globally.</p>
      </div>

      <div class="col-md-3">
        <h6>Contact Us</h6>
        <p class="text-justify"><h7>e-mail</h7><br>hello@ras.com<br><h7>address</h7><br>The Royal African<br> Society is hosted by<br>SOAS Univeristy of<br>London.</p> <p><h7> Registered Charity</h7><br> 1062764</p>
      </div>


      <div class="col-md-3">
        <h6>Site-Map</h6>
        <ul class="footer-links">
          <li><a href="http://s14.local/about-us/">ABOUT US</a></li>
          <li><a href="http://s14.local/what-we-do/">WHAT WE DO</a></li>
          <li><a href="http://s14.local/events/">EVENTS</a></li>
          <li><a href="http://s14.local/membership/">MEMBERSHIP</a></li>
          <li><a href="http://s14.local/contact-us/">CONTACT US</a></li>
        </ul>
      </div>

      <div class="col-md-3">
        <h6>Follow-Us</h6>
        <!-- Add icon library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Add font awesome icons -->
        <div class="social">
        <a href="#" class="fa fa-facebook"></i></a>
        <a href="#" class="fa fa-instagram"></i></a>
        <a href="#" class="fa fa-youtube"></i></a>
      </div>
      </div>

  </div>

 </div>

  
  <hr>

  <div class= "act">
   <a href="<?php echo esc_url( __( 'https://wordpress.org/', 's14-local' ) ); ?>">
        <?php
        /* translators: %s: CMS name, i.e. WordPress. */
        printf( esc_html__( '&copy;2019 Royal African Society ltd - All right reserved', 's14-local' ), 's14-local' );
        ?>
      </a>
      <span class="sep"> | </span>
        <?php
        /* translators: 1: Theme name, 2: Theme author. */
        printf( esc_html__( 'Theme by: s14-local', 'Akintunde Temitayo' ), 'Akintunde Temitayo', '<a href="http://underscores.me/">Underscores.me</a>' );
        ?>
  </div>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
