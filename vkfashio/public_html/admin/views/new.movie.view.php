<?php require '../controller/sidebar.php'; ?>  

<?php require '../database.php'; ?>
<style>
 .valid_time_other{display:none;} 
  </style>
<script>
  jQuery(document).ready(function(){
    //alert('test');
    jQuery('.time_val').change(function(){
      var checkval = jQuery(this).val();
      //alert(checkval);
      if(checkval=='other')
      {
        jQuery('.valid_time_other').show();
        jQuery('#valid_time').val('');
       
      }
      else
      {
       jQuery('#valid_time').val('allways'); 
      }


    });

       jQuery('.remove_button').click(function(){
       jQuery('.valid_time_other').hide();
       jQuery('#other_time').val('');
       jQuery('#valid_time').val('allways');
     });
});
 
  
  </script>

<!--Page Container-->

<section class="page-container">

  <div class="page-content-wrapper">



    



    <!--Main Content-->



    <div class="content sm-gutter">

      <div class="container-fluid padding-25 sm-padding-10">

        <div class="row">

          <div class="col-12">

            <div class="section-title">

              <h4>New Movie</h4>

            </div>

          </div>



          <div class="col-md-12">

            <div class="block form-block mb-4">



              <form enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">

                <div class="form-row">

                  

                  <div class="form-group col-md-12">

                    

                    <label>Title</label>

                    <input class="form-control" value="" name="movie_title" type="text" required="">



                    <label>Description</label>



                    <textarea type="text" class="mceNoEditor form-control" rows="10" name="movie_description" id="movie_description"></textarea>



                  </div>



                  <div class="form-group col-md-6">

                    <label>Year</label>

                    <input class="form-control" value="" name="movie_year" type="number" maxlength="4" required="">

                  </div>



                  <div class="form-group col-md-6">

                    <label>Duration</label>

                    <input class="form-control" value="" name="movie_duration" type="text" required="">

                  </div>



                  <div class="form-group col-md-12">



                    <label>Genre</label>

                    <select multiple="multiple" data-placeholder="- Select -" class="my-select form-control" name="movie_genre[]" required="">

                      <?php foreach($genres as $genre): ?>

                       <option value="<?php echo $genre['genre_id']; ?>"><?php echo $genre['genre_title']; ?></option>

                     <?php endforeach; ?>

                   </select>



                 </div>



                 <div class="form-group col-md-12">



                  <label>Stars <i style="text-transform: initial;color: #c1c1c1;">(Separate With Commas)</i></label>

                  <input class="form-control" data-role="tagsinput" value="" name="movie_stars" type="text" required="">



                </div>



                <div class="form-group col-md-12">

                  <label>Youtube Trailer <i style="text-transform: initial;color: #c1c1c1;">(https://www.youtube.com/watch?v=<b style="color: var(--danger-color)">M_o2z9jU_VE</b>)</i></label>

                  <input class="form-control" value="" name="movie_trailer" type="text" required="">

                </div>



                <div class="form-group col-md-12">

                  <label>Stream Link (MP4)</label>

                  <input class="form-control" value="" name="movie_link" type="text" required="">

                </div>





                <div class="form-group col-md-6">

                  <label>Status</label>





                  <select class="custom-select form-control" name="movie_status" required="">

                   <option value="" selected>- Select -</option>

                   <option value="0">Draft</option>

                   <option value="1">Publish</option>

                 </select>



               </div>



               <div class="form-group col-md-6">

                <label>Featured</label>





                <select class="custom-select form-control" name="movie_featured" required="">

                 <option value="" selected>- Select -</option>

                 <option value="1">Yes</option>

                 <option value="0">No</option>

               </select>



             </div>

             

               <div class="form-group col-md-6">

               <label class="control-label">Edge Node</label>

          <select class="custom-select form-control" multiple name="user_node[]" required="">
            
                     <option value="" selected>- Select -</option>

                      <?php

                                              

                        $sql = "SELECT * FROM edge_node";

                         $result = $link->query($sql);

                           //print_r($result);

                          $count = 1;

                         if ($result->num_rows > 0) {

                      while($row = $result->fetch_assoc()) {?>

                     <option value="<?php echo $row["id"]; ?>"><?php echo $row["edgeName"]; ?></option>

                       <?php } } ?>

      

                   </select>





             </div>

               <div class="form-group col-md-6">

               <label class="control-label">Show duration</label>

                <select class="custom-select form-control time_val">
                     <option value="all_ways" selected>All Ways</option>
                     <option value="other"  >Other</option>
                   </select>
                 </div>
               
                <input id="valid_time" value="allways" class="form-control" name="valid_time_v" type="hidden" required="">

                  <div class="form-group col-md-12 valid_time_other">
                  <label>Other Time</label>
                  <input id="other_time" class="form-control" name="other_time_v" type="text"  value=""> <sapn class="remove_button">Remove</sapn>

                </div> 

                   <div class="form-group col-md-6">
                    <label>Price</label>
                    <input class="form-control" value="" name="price" type="number" required="">
                  </div>

             <div class="form-group col-md-12">    





               <label>Image</label><br/>



               <div class="new-image" id="image-preview" style="height: 266px">

                <label for="image-upload" id="image-label">Choose File</label>

                <input type="file" name="movie_image" id="image-upload" required="" />

              </div>



              <span class="text-danger" style="font-size: 11px; letter-spacing: 0.06em; text-transform: uppercase; font-weight: 500;">Recommended size: <b>350 x 500 Pixels</b> </span>



            </div>





            <div class="form-group col-md-12">

              <hr>

              <button class="btn btn-primary" type="submit" name="save">Save</button>

            </div>





          </div>

        </form>

      </div>

    </div>

  </div>

</div>

</div>

</div>

</section>