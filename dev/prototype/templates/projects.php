<div class="active-page--projects"><?php include("../patterns/partials/header.html"); ?>
    	<style type="text/css">
    		.section-header { 
    			background-image: url(../../assets/img/practice-small.jpg)
    		}
    		@media screen and (min-width: 600px) {
    			.section-header {
    			background-image: url(../../assets/img/practice-medium.jpg)
    			}
    		}
    		@media screen and (min-width: 1000px) {
    			.section-header {
    			background-image: url(../../assets/img/practice.jpg)
    			}
    		}
    	</style>
    	<?php include("../patterns/partials/interior-hero-slot-projects.html"); ?>
    	<?php include("../patterns/partials/introduction-projects.html"); ?>
    	<div class="panel-primary-container">
        <h2>Featured Projects</h2>
    	<section class="section-projects">
	    	<?php include("../patterns/partials/project.html"); ?>
	    	<?php include("../patterns/partials/project2.html"); ?>
	    	<?php include("../patterns/partials/project.html"); ?>
            <a class="button button-primary" href="projects.php">More Projects</a>
	    </section>
	    </div>
	    <?php include("../patterns/partials/case-studies.html"); ?>
    	<?php include("../patterns/partials/succeed.html"); ?>
<?php include("../patterns/partials/footer.html"); ?>
</div>