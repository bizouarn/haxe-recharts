package recharts.example.composed_chart;

import recharts.chart.ComposedChart;
import recharts.cartesian.Area;
import recharts.cartesian.Bar;
import recharts.cartesian.Line;
import recharts.cartesian.CartesianGrid;
import recharts.cartesian.XAxis;
import recharts.cartesian.YAxis;
import recharts.component.Legend;
import recharts.component.ResponsiveContainer;
import recharts.component.Tooltip;

class VerticalComposedChart extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data = [
			{name: 'Page A', uv: 590, pv: 800, amt: 1400},
			{name: 'Page B', uv: 868, pv: 967, amt: 1506},
			{name: 'Page C', uv: 1397, pv: 1098, amt: 989},
			{name: 'Page D', uv: 1480, pv: 1200, amt: 1228},
			{name: 'Page E', uv: 1520, pv: 1108, amt: 1100},
			{name: 'Page F', uv: 1400, pv: 680, amt: 1700}
		];

		return jsx('
			<ResponsiveContainer minHeight={350}>
				<ComposedChart
					data={data}
					layout={Vertical}
					margin={{top: 20, right: 80, bottom: 20, left: 20}}
				>
					<CartesianGrid stroke="#f5f5f5" />
					<XAxis type={Number} />
					<YAxis dataKey="name" type={Category} />
					<Tooltip />
					<Legend />
					<Area dataKey="amt" fill="#8884d8" stroke="#8884d8" />
					<Bar dataKey="pv" barSize={20} fill="#413ea0" />
					<Line dataKey="uv" stroke="#ff7300" />
				</ComposedChart>
			</ResponsiveContainer>
		');
	}
}
