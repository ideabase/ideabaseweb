<?php include("../patterns/partials/header.html"); ?>
		<?php include("../patterns/partials/inline-tags.html"); ?>
        <?php include("../patterns/partials/interior-hero-slot-project.html"); ?>
        <div class="panel-primary-container">
        	<label class=
        	"project-category" for="category">
        	    <select id="category" name="select">
        	      <option value="0">Browse by Category</option>
        	      <option value="1">Print</option>
        	      <option value="2">Branding</option>
        	      <option value="3">Web</option>
        	      <option value="4">Campaign</option>
        	      <option value="5">UX Research</option>
        	    </select>
        	  </label>
     <section class="section-projects-all panel-primary-wide">
        <ul class="project-list">
        	<?php include("../patterns/partials/project-item.html"); ?>
        	<?php include("../patterns/partials/project-item.html"); ?>
        	<?php include("../patterns/partials/project-item.html"); ?>
        	<?php include("../patterns/partials/project-item.html"); ?>
        	<?php include("../patterns/partials/project-item.html"); ?>
        	<?php include("../patterns/partials/project-item.html"); ?>
        	<?php include("../patterns/partials/project-item.html"); ?>
        	<?php include("../patterns/partials/project-item.html"); ?>
        	</ul>
        </section>
    	</div>
<?php include("../patterns/partials/footer.html"); ?>