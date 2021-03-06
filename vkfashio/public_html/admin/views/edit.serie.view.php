<?php require '../controller/sidebar.php'; ?>  

<?php require '../database.php'; ?>

<style>
 /*.valid_time_other{display:none;} */
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
       jQuery('#other_time').val('');
       jQuery('.valid_time_other').hide();
       jQuery('#valid_time').val('allways'); 
       
      }


    });

       jQuery('.remove_button').click(function(){
       jQuery('.valid_time_other').hide();
       jQuery('#other_time').val('');
       jQuery('#valid_time').val('allways');
     });

       var reload = jQuery( ".time_val option:selected" ).val();
      //alert(checkval);
      if(reload =='all_ways') 
      {
        jQuery('.valid_time_other').hide();
        jQuery('#other_time').val('');
       
      }
      else
      {
      jQuery('.valid_time_other').show();
      jQuery('#valid_time').val('');
      }


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

              <h4>Edit Serie</h4>

            </div>

          </div>



          <div class="col-md-12">

            <div class="block form-block mb-4">



              <form enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">

                <div class="form-row">

                  

                  <div class="form-group col-md-12">

                    

                    <input type="hidden" value="<?php echo $serie['serie_id']; ?>" name="serie_id">

                    

                    <label>Title</label>

                    <input class="form-control" value="<?php echo $serie['serie_title']; ?>" name="serie_title" type="text" required="">



                    <label>Description</label>



                    <textarea type="text" class="mceNoEditor form-control" rows="10" name="serie_description" id="serie_description" required=""><?php echo $serie['serie_description']; ?></textarea>



                  </div>



                  <div class="form-group col-md-12">

                    <label>Year</label>

                    <input class="form-control" value="<?php echo $serie['serie_year']; ?>" name="serie_year" type="number" maxlength="4" required="">

                  </div>



                  <div class="form-group col-md-12">



                    <label>Genre</label>



                    <select multiple="multiple" data-placeholder="- Select -" class="my-select form-control" name="serie_genre[]" required="">



                     <?php foreach($selected_genres as $item): ?>



                      <option value="<?php echo $item['genre_id']; ?>" selected><?php echo $item['genre_title']; ?></option>



                    <?php endforeach; ?>



                    <?php foreach($not_selected_genres as $item): ?>

                      <option value="<?php echo $item['genre_id']; ?>"><?php echo $item['genre_title']; ?></option>

                    <?php endforeach; ?>



                  </select>



                </div>



                <div class="form-group col-md-12">

                  <label>Stars <i style="text-transform: initial;color: #c1c1c1;">(Separate With Commas)</i></label>

                  <input class="form-control" data-role="tagsinput" value="<?php echo $serie['serie_stars']; ?>" name="serie_stars" type="text" required="">

                </div>



                <div class="form-group col-md-6">

                  <label>Status</label>



                  <select class="custom-select form-control" name="serie_status" required="">

                    <?php

                    $i = $serie['serie_status'];

                    if($i == 1)

                    {

                      echo '<option value="'.$serie['serie_status'].'" selected="selected">Publish</option>';

                      echo '<option value="0">Draft</option>';



                    }

                    else

                    {

                      echo '<option value="'.$serie['serie_status'].'" selected="selected">Draft</option>';

                      echo '<option value="1">Publish</option>';

                    }

                    ?>

                  </select>



                </div>



                <div class="form-group col-md-6">

                  <label>Featured</b></label>





                  <select class="custom-select form-control" name="serie_featured" required="">

                    <?php

                    $i = $serie['serie_featured'];

                    if($i == 1)

                    {

                      echo '<option value="'.$serie['serie_featured'].'" selected="selected">Yes</option>';

                      echo '<option value="0">No</option>';



                    }

                    else

                    {

                      echo '<option value="'.$serie['serie_featured'].'" selected="selected">No</option>';

                      echo '<option value="1">Yes</option>';

                    }

                    ?>

                  </select>



                </div>



                <div class="form-group col-md-12">

                  <label>Youtube Trailer <i style="text-transform: initial;color: #c1c1c1;">(https://www.youtube.com/watch?v=<b style="color: var(--danger-color)">M_o2z9jU_VE</b>)</i></label>

                  <input class="form-control" value="<?php echo $serie['serie_trailer']; ?>" name="serie_trailer" type="text">

                </div>

                 <div class="form-group col-md-6">



               <label class="control-label">Edge Node</label>

               <?php 

               $edge_data = $serie['edge_node_id'];
                  $edge_data;
 
               $edge_data_array = explode(',',$edge_data);

               

                        $edge_data;?>

            <select class="custom-select form-control" multiple name="user_node[]" required="">



                     <option value="" selected>- Select -</option>

                      <?php 

                      

                       

                     

                        $sql = "SELECT * FROM edge_node";



                         $result = $link->query($sql); 



                           //print_r($result);



                          $count = 1;



                         if ($result->num_rows > 0) {



                      while($row = $result->fetch_assoc()) { 



                    

                     //foreach($edge_data as $edge)

                     {



                        ?>



    <option <?php if(in_array($row["id"],$edge_data_array)){ echo 'selected'; }?> value="<?php echo $row["id"]; ?>"><?php echo $row["edgeName"]; ?></option>  



                       <?php } } } ?>    



                   </select>    



             </div>  

             <div class="form-group col-md-6">

               <label class="control-label">Edge Node</label>

                <select class="custom-select form-control time_val">
                     <option <?php if(!empty($serie['valid_time'])){echo 'selected';} ?> value="all_ways" selected>All Ways</option>
                     <option <?php if(!empty($serie['other_time'])){echo 'selected';} ?> value="other"  >Other</option>
                   </select>
                 </div>
               
                <input id="valid_time" value="allways" class="form-control" name="valid_time_v" type="hidden" required="">

                  <div class="form-group col-md-12 valid_time_other">
                  <label>Other Time</label>
                  <input id="other_time" class="form-control" name="other_time_v" type="text"  value="<?php echo $serie['other_time'];?>"> <sapn class="remove_button">Remove</sapn>

                </div> 
                </div> 

                  <div class="form-group col-md-6">
                    <label>Price</label>
                    <input class="form-control" value="<?php echo $serie['serie_price'];?>" name="price" type="number" required="">
                  </div>





                <div class="form-group col-md-12">



                 <label>Image</label><br/>



                 <div class="new-image" id="image-preview" style="background: url(../../images/<?php echo $serie['serie_image'] ?>);background-size: cover; background-position: center; height: 266px">

                  <label for="image-upload" id="image-label">Choose File</label>

                  <input type="hidden" value="<?php echo $serie['serie_image']; ?>" name="serie_image_save">

                  <input type="file" name="serie_image" id="image-upload" />

                </div>



                <span class="text-danger" style="font-size: 11px; letter-spacing: 0.06em; text-transform: uppercase; font-weight: 500;">Recommended size: <b>350 x 500 Pixels</b> </span>



              </div>


       


              <div class="form-group col-md-12">

                <hr>

                <button class="btn btn-primary" type="submit" name="save">Save</button>

                <input class="btn btn-danger" type="button" value="Delete" onclick="alertdelete();" name="trash"/>



                <script type="text/javascript">

                 function alertdelete() {

                   swal({ title: "Are you sure?", text: "You will not be able to recover this item!", type: "warning",cancelButtonClass: "btn-default btn-sm", showCancelButton: true, confirmButtonClass: "btn-danger btn-sm", confirmButtonText: "Yes, delete it!", closeOnConfirm: false }, function(){window.location.href = "<?php echo _SITE_URL ?>/admin/controller/delete_serie.php?id=<?php echo $serie['serie_id']; ?>" });}

                 </script>

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