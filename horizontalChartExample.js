 var rootURL = "http://localhost/D3JS/api/games";
 $(document).ready(function(){
    graph();
 });
$(document).on("click", "#teamSubmit", function(){
    let team = document.getElementById("team").value;
    let points = document.getElementById("points").value;
    let test = JSON.stringify({
        "team": team,
        "points": points
    })
    console.log(test)
    addGame(test);
    })
    
    

function destroy(){
    d3.select("svg").remove();
}
$(document).on("click", "#addGameButton",function(){
    console.log("Add game button");
   addGame();
});
function formToJSON() {
	return JSON.stringify({
		"team": $('#team').val(), 
		"points": $('#points').val(),
		});
}
 function addGame(team){
     console.log('addTeam');
     console.log(team)
     addGameURL = "http://localhost/D3JS/api/addTeam";
 	$.ajax({
 		type: 'POST',
 		contentType: 'application/json',
		url: addGameURL,
 		dataType: "json",
		data: team,
		success: function(data, textStatus, jqXHR){
             graph();
             destroy()
            ;
 		},
 		error: function(jqXHR, textStatus, errorThrown){
 			alert('addGame error: ' + textStatus);
 		}
 	});
 	return false; }






function graph(){
    var margin = {top: 20, right: 30, bottom: 40, left: 90},
    width = 460 - margin.left - margin.right,
    height = 400 - margin.top - margin.bottom;

    var svg = d3.select("#my_dataviz")
        .append("svg")
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", 
            "translate(" + margin.left + "," + margin.top + ")");

    //         d3.csv("country.csv", function(data){
    //             //X Axis
    //             return{
    //         Country : data.Country,
    //         Value : data.Value
    //     }
    // }).then(function(data) {
        d3.json(rootURL)
.then(function(data) {
// console.log(data.games);
const score = data.games
console.log(score)
hello(score)
})
function hello(score){
                console.log(score)
                var x = d3.scaleLinear()
                    .domain([0, 100])  //X Axis values 
                    .range([0, width]);
                svg.append("g")
                    .attr("transform", "translate(0," + height + ")")
                    .call(d3.axisBottom(x))
                    .selectAll("text")
                    .attr("transform", "translate(-10,0)rotate(-45)")
                    .style("text-anchor", "end");

                //Y Axis
                var y = d3.scaleBand()
                .range([ 0, height])
                .domain(score.map(function(d) {return d.team;})) //Fills in Y axis 
                .padding(.1);
                svg.append("g")
                    .call(d3.axisLeft(y))

                //Data Rows
                svg.selectAll("myRect")
                    .data(score)
                    .enter()
                    .append("rect")
                    .attr("x",x(0))
                    .attr("y", function(d) {return y(d.team);})  // Y Axis Value
                    .attr("width", function(d) {return x(d.points);})  //X Axis Value
                    .attr("height", y.bandwidth())
                    .attr("fill", "#69b3a2")
            }
    
        }

        function pieChart(){
            var svg = d3.select("svg"),
            width = svg.attr("width"),
            height = svg.attr("height"),
            radius = Math.min(width, height) / 2;

            var g = svg.append("g")
                .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")");

            var color = d3.scaleOrdinal([
                'gray', 'green', 'brown', 'orange', 'yellow', 'red', 'purple'
            ]);

            var pie = d3.pie().value(function(d){
                return d.percent;
            });

            var path = d3.arc()
                .outerRadius(radius - 10).innerRadius();

            var label = d3.arc()
                .outerRadius(radius).innerRadius(radius - 80);

            d3.csv("populations.csv", function(d){
                return{
                    states : d.states,
                    percent : d.percent
                }
            }).then(function(data) {
                console.log(data[0])
                

                var arc = g.selectAll(".arc")
                    .data(pie(data))
                    .enter()
                    .append("g")
                    .attr("class", "arc");

                arc.append("path")
                    .attr("d", path)
                    .attr("fill", function(d) {return color(d.data.states);});

                    arc.append("text").attr("transform", function(d){
                        return "translate(" + label.centroid(d) + ")";
                    })

                    .text(function(d) { return d.data.states; });
            });

            svg.append("g")
                .attr("transform", "translate(" + (width / 2 -120) + "," + 20 + ")")
                .append("text").text("Top population states in India")
                .attr("class", "title")
        }