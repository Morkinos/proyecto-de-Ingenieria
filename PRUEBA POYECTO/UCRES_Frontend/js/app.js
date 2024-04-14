Chart.defaults.color = '#fff'
Chart.defaults.borderColor = '#444'

function generarPokemon() {
    const numeroAleatorio = Math.floor(Math.random() * 1025) + 1;
    let url = `https://pokeapi.co/api/v2/pokemon/${numeroAleatorio}`;
    return url;
}

const printCharts = () => {
    const url = generarPokemon();
    
    fetchCoastersData(url,'https://pokeapi.co/api/v2/type')
        .then(([pokemonRamdom, tipos]) => {
            renderModelsChart(pokemonRamdom,tipos)
            renderFeaturesChart(pokemonRamdom,tipos)
            renderYearsChart(pokemonRamdom)
            enableEventHandlers(pokemonRamdom)
        })

}

const renderModelsChart = (pokemon,tipos)  => {
    const nombrePoke = pokemon.name;
    const nombre = document.getElementById("pokemonInput");
    nombre.innerHTML = 'Nombre: '+ nombrePoke;
    let nombreTipo1 = '';
    let nombreTipo2 = '';

    if (pokemon.types && pokemon.types.length > 0) {
        nombreTipo1 = pokemon.types[0].type.name;
        console.log(nombreTipo1);
        
        if (pokemon.types.length > 1) {
            nombreTipo2 = pokemon.types[1].type.name;
            console.log(nombreTipo2);
        }
    }
    const tiposPokemonConsultado = [nombreTipo1, nombreTipo2];
    const pokemontipo =tipos.results.map(name => name.name);

    const data = {
        labels: pokemontipo,
        datasets: [{
            data: pokemontipo.map(tipo => { return (tiposPokemonConsultado.includes(tipo)) ? 1 : 0;}), 
            borderColor: getDataColors(),
            backgroundColor: getDataColors(20)
        }]
    }

    const options = {
        plugins: {
            legend: { position: 'left' }
        }
    }

    new Chart('modelsChart', { type: 'doughnut', data, options })
}

const renderFeaturesChart = (pokemon,tipos) => {
       
        const nombresStats = pokemon.stats.map(stat => stat.stat.name);
        const valorStats = pokemon.stats.map(stats => stats.base_stat);

    const data = {
        labels: nombresStats,
        datasets: [{
            data: valorStats, 
            borderColor: getDataColors()[0],
            backgroundColor: getDataColors(20)[0],
            pointRadius: 5,
        }]
    }
    const options = {
        plugins: {
            legend: { display: false }
        },
        scales: {
            r: {
                ticks: { display: false }
            }
        }
    }

    new Chart('featuresChart', { type: 'bar', data, options })
}
/*const renderFeaturesChart = (pokemon,tipos) => {
       
    let nombreTipo1 = '';
    let nombreTipo2 = '';

    if (pokemon.types && pokemon.types.length > 0) {
        nombreTipo1 = pokemon.types[0].type.name;
        console.log(nombreTipo1);
        
        if (pokemon.types.length > 1) {
            nombreTipo2 = pokemon.types[1].type.name;
            console.log(nombreTipo2);
        }
    }
    const tiposPokemonConsultado = [nombreTipo1, nombreTipo2];
    const pokemontipo =tipos.results.map(name => name.name);
    const data = {
        labels: pokemontipo,
        datasets: [{
            label: tiposPokemonConsultado,
            data: pokemontipo.map(tipo => { return (tiposPokemonConsultado.includes(tipo)) ? 1 : 0;}), 
            borderColor: getDataColors()[0],
            backgroundColor: getDataColors(20)[0]
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        },
        scales: {
            r: {
                ticks: { display: false }
            }
        }
    }

    new Chart('featuresChart', { type: 'radar', data, options })
}*/
/*const renderModelsChart = (pokemon,tipos)  => {
    const nombresStats = pokemon.stats.map(stat => stat.stat.name);
    const valorStats = pokemon.stats.map(stats => stats.base_stat);
    const nombrePoke = pokemon.name;
    const nombre = document.getElementById("pokemonInput");
    nombre.innerHTML = 'Nombre: '+ nombrePoke;
    const data = {
        labels: nombresStats,
        datasets: [{
            data: valorStats,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(20)
        }]
    }

    const options = {
        plugins: {
            legend: { position: 'left' }
        }
    }

    new Chart('modelsChart', { type: 'doughnut', data, options })
}*/



const renderYearsChart = coasters => {

    const years = ['1998-2000', '2001-2003', '2004-2006', '2007-2009', '2013-2015', '2016-2018', '2019-2021']

    const data = {
        labels: years,
        datasets: [{
            data: getCoastersByYear(coasters, years),
            tension: .5,
            borderColor: getDataColors()[1],
            backgroundColor: getDataColors(20)[1],
            fill: true,
            pointBorderWidth: 5
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }
    }

    new Chart('yearsChart', { type: 'line', data, options })
}



printCharts()