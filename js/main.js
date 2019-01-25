function obtenerDatos(){
    let url='http://jsonplaceholder.typicode.com/users';
    const api = new XMLHttpRequest();
    api.open('GET', url, true);
    api.send();
    api.onreadystatechange = function () {
        if (this.status==200 && this.readyState==4) {
            let datos=JSON.parse(this.responseText);
            let listaElementos=document.querySelector('#listaResultados');
            listaElementos.innerHTML = "";
        
            for (const elemento of datos) {
                
                listaElementos.innerHTML+=
                `<li> 
                    <p class="lead">
                        <strong>Nombre:</strong> ${elemento.name} </br>
                        <strong>Nombre de usuario:</strong> ${elemento.username} </br>
                        <strong>Correo electronico:</strong> ${elemento.email} </br>
                        <strong>Calle:</strong> ${elemento.address.street} </br>
                        <strong>Suite:</strong> ${elemento.address.suite} </br>
                        <strong>Ciudad:</strong> ${elemento.address.city} </br>
                        <strong>Codigo postal:</strong> ${elemento.address.zipcode} </br>
                        <strong>Latitud:</strong> ${(elemento.address.geo.lat).substr(0,8)} </br>
                        <strong>Longitud:</strong> ${(elemento.address.geo.lat).substr(0,8)} </br>
                        <strong>Numero de telefono:</strong> ${elemento.phone} </br>
                        <strong>Direccion de sitio web:</strong> ${elemento.website} </br>
                        <strong>Nombre de la compañia:</strong> ${elemento.company.name} </br>
                        <strong>catchPhrase:</strong> ${elemento.company.catchPhrase} </br>
                        <strong>bs:</strong> ${elemento.company.bs} </br>
                    </p> 
                </li> 
                <hr></hr>`
            }
                let enableSave = document.getElementById("save");
                enableSave.classList.remove("disabled")
        }
    }
    
}

