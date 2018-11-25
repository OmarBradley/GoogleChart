<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages': ['corechart']});
        google.charts.setOnLoadCallback(drawWqiComboChart);
        google.charts.setOnLoadCallback(drawWqiAreaChart);

        function drawWqiComboChart() {
            var dataTable = new google.visualization.DataTable({
                cols: [
                    {type: 'string', label: '일자'},
                    {type: 'number', label: 'band1'},
                    {type: 'number', label: 'band2'},
                    {type: 'number', label: 'band3'},
                    {type: 'number', label: 'band4'},
                    {type: 'number', label: 'band5'},
                    {type: 'number', label: '거진 H1'}
                ],
                rows: [{c: [{v: '2014-02'}, {v: 24}, {v: 10}, {v: 13}, {v: 13}, {v: 20}, {v: 29}]},
                    {c: [{v: '2014-08'}, {v: 24}, {v: 10}, {v: 13}, {v: 13}, {v: 20}, {v: 44}]},
                    {c: [{v: '2015-02'}, {v: 24}, {v: 10}, {v: 13}, {v: 13}, {v: 20}, {v: 29}]},
                    {c: [{v: '2015-08'}, {v: 24}, {v: 10}, {v: 13}, {v: 13}, {v: 20}, {v: 44}]},
                    {c: [{v: '2016-02'}, {v: 24}, {v: 10}, {v: 13}, {v: 13}, {v: 20}, {v: 29}]},
                    {c: [{v: '2016-08'}, {v: 24}, {v: 10}, {v: 13}, {v: 13}, {v: 20}, {v: 38}]},
                    {c: [{v: '2017-02'}, {v: 24}, {v: 10}, {v: 13}, {v: 13}, {v: 20}, {v: 32}]},
                    {c: [{v: '2017-08'}, {v: 24}, {v: 10}, {v: 13}, {v: 13}, {v: 20}, {v: 44}]}]
            });

            var colors = [
                '#0367BC',
                '#5CE600',
                '#F6E101',
                '#E36C00',
                '#EA0000'
            ];

            var options = {
                title: '연도별 수질평가지수',
                vAxis: {
                    minValue: 0,
                    maxValue: 80,
                    ticks: [
                        {f: '1등급', v: 24},
                        {f: '2등급', v: 34},
                        {f: '3등급', v: 47},
                        {f: '4등급', v: 60},
                        {f: '5등급', v: 80}]
                },
                isStacked: true,
                legend: {position: 'bottom', alignment: 'center'},
                series: {
                    0: {
                        areaOpacity: 1,
                        color: colors[0],
                        type: 'area',
                        visibleInLegend: false
                    },
                    1: {
                        areaOpacity: 1,
                        color: colors[1],
                        type: 'area',
                        visibleInLegend: false
                    },
                    2: {
                        areaOpacity: 1,
                        color: colors[2],
                        type: 'area',
                        visibleInLegend: false
                    },
                    3: {
                        areaOpacity: 1,
                        color: colors[3],
                        type: 'area',
                        visibleInLegend: false
                    },
                    4: {
                        areaOpacity: 1,
                        color: colors[4],
                        type: 'area',
                        visibleInLegend: false
                    },
                    5: {color: '#000000'}
                }
            };

            var container = document.getElementById('wqi_combo_chart');
            var chart = new google.visualization.ComboChart(container);
            chart.draw(dataTable, options);
        }

        function drawWqiAreaChart() {
            var dataTable = new google.visualization.DataTable({
                cols: [
                    {type: 'string', label: '일자'},
                    {type: 'number', label: '거진 H1'}
                ],
                rows: [{c: [{v: '2014-02'}, {v: 29}]},
                    {c: [{v: '2014-08'}, {v: 44}]},
                    {c: [{v: '2015-02'}, {v: 29}]},
                    {c: [{v: '2015-08'}, {v: 44}]},
                    {c: [{v: '2016-02'}, {v: 29}]},
                    {c: [{v: '2016-08'}, {v: 38}]},
                    {c: [{v: '2017-02'}, {v: 32}]},
                    {c: [{v: '2017-08'}, {v: 44}]}]
            });

            var options = {
                vAxis: {textPosition: 'none'},
                series: {
                    0: {
                        areaOpacity: 1,
                        color: '#000000',
                        visibleInLegend: false
                    }
                }
            };

            var container = document.getElementById('wqi_area_chart');
            var chart = new google.visualization.AreaChart(container);
            chart.draw(dataTable, options);
        }
    </script>
</head>
<body>
<div id="wqi_chart" style="text-align:center;">
    <div id="wqi_combo_chart" style="width: 900px; height: 500px;  margin:0 auto;"></div>
    <div id="wqi_area_chart" style="width: 700px; height: 100px;  margin:0 auto;"></div>
</div>
</body>
</html>
