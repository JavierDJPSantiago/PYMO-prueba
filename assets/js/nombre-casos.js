const $formul = document.querySelector('#formul');
const $nombre = document.querySelector('#nombre');
const $casos = document.querySelector('#casos');

$formLogin.addEventListener('submit', (e) => {
    e.preventDefault();

    const nombre = $nombre.value;
    const casos = $casos.value;


    if(username != '' && password != '') {
        fetch('http://localhost:8080//guardarhospital', {
            method: 'POST',
            body: JSON.stringify( {
                nombre,
                casos
            }),
            headers: {
                'Content-type': 'application/json'
            }
        }).then(resp => resp.text()).then(console.log)
    }

});