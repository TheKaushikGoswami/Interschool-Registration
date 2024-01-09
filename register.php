<?php
include 'Database.php';
include 'config.php';

?>

<?php 
$db = new Database();

if(isset($_POST['teamsubmit'])){
    $team_id=0;
    $school_name  = mysqli_real_escape_string($db->link, $_POST['school_name']);
    $district = mysqli_real_escape_string($db->link, $_POST['district']);
    $city = mysqli_real_escape_string($db->link, $_POST['city']);
    $contact_number = mysqli_real_escape_string($db->link, $_POST['contact_number']);
    $email = mysqli_real_escape_string($db->link, $_POST['email']);
    $event_type = mysqli_real_escape_string($db->link, $_POST['event_type']);

    if($school_name == "" || $district == "" || $city == "" || $contact_number == "" || $email == "" || $event_type == ""){
        $error = "<div class='alert alert-danger'>Field Must not be Empty.</div>";
    }else{
        if($event_type == "D"){
            $query = "INSERT INTO `dancing_registration`(`school_name`, `district`, `city`, `contact`, `mail_id`, `event_type`) values('$school_name','$district','$city','$contact_number','$email','$event_type')";
            $team_id = $db->insert($query);
        }

        else if ($event_type == "S"){
            $query = "INSERT INTO `singing_registration`(`school_name`, `district`, `city`, `contact`, `mail_id`, `event_type`) values('$school_name','$district','$city','$contact_number','$email','$event_type')";
            $team_id = $db->insert($query);
        }

        else if ($event_type == "DC"){
            $query = "INSERT INTO `declamation_registration`(`school_name`, `district`, `city`, `contact`, `mail_id`, `event_type`) values('$school_name','$district','$city','$contact_number','$email','$event_type')";
            $team_id = $db->insert($query);

        }
    }

    $no_of_participants = mysqli_real_escape_string($db->link, $_POST['no_of_participants']);
    $no_of_teachers = mysqli_real_escape_string($db->link, $_POST['no_of_teachers']);
    
    if($no_of_participants == "" || $no_of_teachers == ""){
        $error = "<div class='alert alert-danger'>Field Must not be Empty.</div>";
    }
    else{
        for ($i = 1; $i <= $no_of_participants; $i++){
            $name = mysqli_real_escape_string($db->link, $_POST['participant_'.$i.'_name']);
            $class = mysqli_real_escape_string($db->link, $_POST['participant_'.$i.'_class']);
            $roll = mysqli_real_escape_string($db->link, $_POST['participant_'.$i.'_roll']);
            $contact = mysqli_real_escape_string($db->link, $_POST['participant_'.$i.'_contact']);
            $event = mysqli_real_escape_string($db->link, $_POST['event_type']);


            $query = "INSERT INTO `participants`(`team_id`, `name`, `class`, `roll`, `contact`, `event`) values('$team_id','$name','$class','$roll','$contact', '$event')";
            $create = $db->insert($query);

        }

        for ($j = 1; $j <= $no_of_teachers; $j++){
            $name = mysqli_real_escape_string($db->link, $_POST['teacher_'.$j.'_name']);
            $contact = mysqli_real_escape_string($db->link, $_POST['teacher_'.$j.'_contact']);
            $mail = mysqli_real_escape_string($db->link, $_POST['teacher_'.$j.'_email']);
            $event = mysqli_real_escape_string($db->link, $_POST['event_type']);


            $query = "INSERT INTO `teachers`(`team_id`, `name`, `contact`, `mail_id`, `event`) values('$team_id','$name', '$contact', '$mail', '$event')";
            $creatre = $db->insert($query);

        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inter-School Competition</title>
    <link rel="stylesheet" href="./assets/css/style.css">
    <script src="./assets/js/script.js"></script>
    <link rel="icon" href="./assets/images/favicon.svg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-1">
            <div class="card">

            <?php
            if(isset($error)){
                echo $error;
            }   
            ?>

            <div class="card-header">
                <img src="./assets/images/GULogo.png" alt="Geeta University" height="100px" class="">

                <h3 class="card-title">
                    Registration for the Inter-School Competition
                </h3>
            </div>
            <div class="card-body">
                <form action="" method="post" class="p-5">

                    <div class="form-group">
                        <label class="form-label" for="school_name">School Name: </label>
                        <input class="form-control" type="text" name="school_name" id="school_name"  required>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="district">District: </label>
                        <input class="form-control" type="text" name="district" id="district"  required>

                    </div>
                    <div class="form-group">
                        <label class="form-label" for="city">City: </label>
                        <input class="form-control" type="text" name="city" id="city"  required>

                    </div>
                    
                    <div class="form-group">
                        <label class="form-label" for="contact_number">Contact Number: </label>
                        <input class="form-control" type="tel" name="contact_number" id="contact_number"  required>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="email">Email Address: </label>
                        <input class="form-control" type="email" name="email" id="email"  required>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label" for="event_type">Participating Event: </label>
                        <select class="form-control" name="event_type" id="event_type" onchange="generateOptions()" required>
                            <option value="default" selected>---</option>
                            <option value="D">Dancing</option>
                            <option value="S">Singing</option>
                            <option value="DC">Declamation</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="no_of_participants">Number of Participants: </label>
                        <select class="form-control" name="no_of_participants" id="no_of_participants"  onchange="generateParticipants()" required>
                        <option value="default" selected>---</option>
                        </select>
                    </div>
                    <div id="participantFields" class="form-group"></div>


                    <div class="form-group">
                        <label class="form-label" for="no_of_teachers">Number of Teachers: </label>
                        <select class="form-control" name="no_of_teachers" id="no_of_teachers"  onchange="generateTeachers()" required>
                            <option value="default" selected>---</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                        </select>
                        <div id="teacherFields"></div>
                    </div>
                    <input class="btn btn-primary mt-5" name="teamsubmit" type="submit" value="Submit" id="submitt">
                </form>
            </div>
            <div class="card-footer">
                <h3 class="card-title">
                    Made with <span class="text-danger">&hearts;</span> in India
                </h3>
            </div>
        </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
</body>

</html>