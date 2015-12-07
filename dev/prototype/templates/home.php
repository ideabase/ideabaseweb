<?php include("../patterns/partials/header.html"); ?>
	<style type="text/css">
		.section-about { 
			background-image: url(../../assets/img/practice-small.jpg)
		}
		@media screen and (min-width: 600px) {
			.section-about {
			background-image: url(../../assets/img/practice-medium.jpg)
			}
		}
		@media screen and (min-width: 1000px) {
			.section-about {
			background-image: url(../../assets/img/practice.jpg)
			}
		}
	</style>
        <?php include("../patterns/partials/hero-slot.html"); ?>
        <?php include("../patterns/partials/services.html"); ?>
        <?php include("../patterns/partials/projects.html"); ?>
<?php include("../patterns/partials/footer.html"); ?>