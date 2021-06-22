<?php 
session_start();

if (isset($_SESSION['user_email'])){

    

    

require '../../config.php';

require '../functions.php';

require '../views/header.view.php';

require '../views/navbar.view.php'; 



$connect = connect($database);

if(!$connect){

	header('Location: ' . _SITE_URL . '/admin/controller/error.php');

	} 



$check_access = check_access($connect);



if ($check_access['user_role'] == 1){



if ($_SERVER['REQUEST_METHOD'] == 'POST'){



	$movie_genre = $_POST['movie_genre'];

	

	 $movie_title = cleardata($_POST['movie_title']);  

	$movie_description = cleardataTextArea($_POST['movie_description']);

	$movie_year = cleardata($_POST['movie_year']);

	$movie_duration = cleardata($_POST['movie_duration']); 

	$movie_trailer = cleardata($_POST['movie_trailer']);

	$movie_link = cleardata($_POST['movie_link']); 

	$movie_status = cleardata($_POST['movie_status']);

	 $movie_stars = cleardata($_POST['movie_stars']);

	$movie_featured = cleardata($_POST['movie_featured']);

	$user_node = cleardata($_POST['user_node']);

	 $valid_time_v = cleardata($_POST['valid_time_v']);

	 $other_time_v = cleardata($_POST['other_time_v']);  
	  
     //array_shift($user_node); 

     $unodes = implode(',', $user_node);       


	$slug = convert_slug($movie_title);   

	$exists = get_movie_slug($connect, $slug);  



	if ($exists > 0)   

	{

	    $new_number = $exists + 1; 

	    $movie_slug = $slug."-".$new_number;  



	}else{ 



	$movie_slug = convert_slug($movie_title);



	}



	$movie_image = $_FILES['movie_image']['tmp_name']; 



	$imagefile = explode(".", $_FILES["movie_image"]["name"]);

	$renamefile = round(microtime(true)) . '.' . end($imagefile);



	$movie_image_upload = '../../images/'; 



	move_uploaded_file($movie_image, $movie_image_upload . 'movie_' . $renamefile);



	$statment = $connect->prepare(

		"INSERT INTO movies (movie_id,movie_title,movie_description,movie_year,movie_duration,movie_stars,movie_trailer,movie_link,movie_status,movie_date,movie_featured, movie_slug, movie_image,other_time,valid_time,edge_node_id) VALUES (null, :movie_title, :movie_description, :movie_year, :movie_duration, :movie_stars, :movie_trailer, :movie_link, :movie_status, CURRENT_TIMESTAMP, :movie_featured, :movie_slug, :movie_image,:other_time,:valid_time,:edge_node_id)"

		);



	$statment->execute(array(



		':movie_title' => $movie_title,

		':movie_description' => $movie_description,

		':movie_year' => $movie_year,

		':movie_duration' => $movie_duration,

		':movie_stars' => $movie_stars,

		':movie_trailer' => $movie_trailer,

		':movie_link' => $movie_link,

		':movie_status' => $movie_status,

		':movie_featured' => $movie_featured,

		':movie_slug' => $movie_slug, 

		':movie_image' => 'movie_' . $renamefile,

		':other_time' => $other_time_v,

		':valid_time' => $valid_time_v,  

		':edge_node_id' => $unodes   
		));





$statment = $connect->prepare("SELECT @@identity AS id");

$statment->execute();

$resultado = $statment->fetchAll();

$id = 0;

foreach ($resultado as $row) {

        $id = $row["id"];

    }



$statment = $connect->prepare( "INSERT INTO movies_genres (genre_id,movie_id) VALUES (:genre_id, :movie_id)");

$statment->bindParam(':genre_id', $idgenre);

$statment->bindParam(':movie_id', $id);



foreach ($movie_genre as $option_value)

{

   $idgenre = $option_value;

   $statment->execute();

}



	header('Location:' . _SITE_URL . '/admin/controller/movies.php');



}



$genres = get_all_genres($connect);



require '../views/new.movie.view.php';

require '../views/footer.view.php';



}else{



	header('Location: ' . _SITE_URL);

}



}else {

		header('Location: ./login.php');		

		}





?>