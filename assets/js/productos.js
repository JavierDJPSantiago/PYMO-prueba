const $formul = document.querySelector('#formul');
const $nombre = document.querySelector('#nombre');
const $cubrebocas = document.querySelector('#cubrebocas');
const $mascarillas = document.querySelector('#mascarillas');
const $caretas = document.querySelector('#caretas');


$formLogin.addEventListener('submit', (e) => {
    e.preventDefault();

    const nombre = $nombre.value;
    const descripcion = $cubrebocas.value + "" + $cubrebocas.mascarillas + "" + $caretas.mascarillas;


    if(username != '' && password != '') {
        fetch('http://localhost:8080//guardarproductos', {
            method: 'POST',
            body: JSON.stringify( {
                nombre,
                descripcion
            }),
            headers: {
                'Content-type': 'application/json'
            }
        }).then(resp => resp.text()).then(console.log)
    }

});