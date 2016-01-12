<div class="active-page--home">
<?php include("../patterns/partials/header.html"); ?>
		<style type="text/css">
			.section-header { 
				background-image: url(../../assets/img/practice-small.jpg)
			}
	        .panel-background-image {
	            background-image: url(../../assets/img/bricks-small.jpg)
	        }
			@media screen and (min-width: 600px) {
				.section-header {
				background-image: url(../../assets/img/practice-medium.jpg)
				}
	            .panel-background-image {
	                background-image: url(../../assets/img/bricks-medium.jpg)
	            }
			}
			@media screen and (min-width: 1000px) {
				.section-header {
				background-image: url(../../assets/img/practice.jpg)
				}
	            .panel-background-image {
	                background-image: url(../../assets/img/bricks.jpg)
	            }
			}
		</style>
        <?php include("../patterns/partials/hero-slot.html"); ?>
        <?php include("../patterns/partials/services.html"); ?>
        <?php include("../patterns/partials/projects.html"); ?>
        <?php include("../patterns/partials/people-home.html"); ?>
<?php include("../patterns/partials/footer.html"); ?>
</div>