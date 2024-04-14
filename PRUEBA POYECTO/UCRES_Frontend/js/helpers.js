const fetchCoastersData = (...urls) => {
    const promises = urls.map(url => fetch(url).then(response => response.json()))
    return Promise.all(promises)
}

const getDataColors = opacity => {
    const colors = ['#ffffff','#ff0000','#21c0d7','#7448c2','#c27448', '#808080', '#adff2f', '#916ecf', '#4d4d4d', '#ff6600', '#0000ff', '#00cc66', '#ffff00', '#ff3366', '#6699ff', '#ccac00', '#3b057f', '#ff69b4', '#5ab8bc', '#297225'];
    return colors.map(color => opacity ? `${color + opacity}` : color)
}

const getCoastersByYear = (coasters, years) => {
    const coastersByYear = years.map(yearsRange => {
        const [from, to] = yearsRange.split('-')
        return coasters.filter(eachCoaster => eachCoaster.year >= from && eachCoaster.year <= to).length
    })
    return coastersByYear
}

const updateChartData = (chartId, data, label) => {
    const chart = Chart.getChart(chartId)
    chart.data.datasets[0].data = data
    chart.data.datasets[0].label = label
    chart.update()
}