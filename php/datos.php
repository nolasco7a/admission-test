<?php
    $conexion=new Conexion();
    $con=$conexion->getConexion();

        
            $url = "http://jsonplaceholder.typicode.com/users";
            $json = file_get_contents("$url");
            $jsonData = json_decode($json, true);

        for ($i=0; $i < count($jsonData) ; $i++) { 
            $id = $jsonData[$i]["id"];
            $name_ = $jsonData[$i]["name"];
            $username = $jsonData[$i]["username"];
            $email = $jsonData[$i]["email"];
            $phone = $jsonData[$i]["phone"];
            $phone = str_replace("x","",$phone);
            $phone = str_replace("X","",$phone);
            $phone = str_replace("-","",$phone);
            $phone = str_replace(" ","",$phone);
            $phone = str_replace(")","",$phone);
            $phone = str_replace("(","",$phone);
            $phone = str_replace(".","",$phone);
            $website = $jsonData[$i]["website"]; 
            $street = $jsonData[$i]["address"]["street"];
            $suite = $jsonData[$i]["address"]["suite"];
            $city = $jsonData[$i]["address"]["city"];
            $zipcode = $jsonData[$i]["address"]["zipcode"];
            $zipcode = str_replace("-","",$zipcode);
            $zipcode = str_replace(" ","",$zipcode);
            $lat = $jsonData[$i]["address"]["geo"]["lat"];
            $lng = $jsonData[$i]["address"]["geo"]["lng"]; 
     
           $consulta = $con->prepare("INSERT INTO 
           datos(id, name_, username, email, phone, website)
           VALUES(:idc1, :name_, :username, :email, :phone, :website)");
           
          $consulta2 = $con->prepare("INSERT INTO 
           direccion(id, street, suite, city, zipcode, lat, lng)
           VALUES(:idc2, :street, :suite, :city, :zipcode, :lat, :lng)");
           
     
           $consulta->bindParam(':idc1', $id);
           $consulta->bindParam(':name_', $name_);
           $consulta->bindParam(':username', $username);
           $consulta->bindParam(':email', $email);
           $consulta->bindParam(':phone', $phone);
           $consulta->bindParam(':website', $website); 
           $consulta2->bindParam(':idc2', $id);
           $consulta2->bindParam(':street', $street);
           $consulta2->bindParam(':suite', $suite);
           $consulta2->bindParam(':city', $city);
           $consulta2->bindParam(':zipcode', $zipcode);
           $consulta2->bindParam(':lat', $lat);
           $consulta2->bindParam(':lng', $lng);
     
           if ($consulta->execute() && $consulta2->execute()) {
               echo('<div class="alert alert-success alert-dismissible fade show text-center" role="alert">
               <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                 <span aria-hidden="true">&times;</span>
               </button>
               <strong>:D</strong> El registro co id: '.$id.' se ha guardado correctamente.
             </div>');
           }else {
            echo('<div class="alert alert-warning alert-dismissible fade show text-center" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>:C</strong> Ocurrio un error inesperado.
          </div>');
               break;
           }
         }
 
    
    
