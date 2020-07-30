import 'package:flutter/material.dart';
import 'package:flutter_filter_app/screen/RangeData.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;


class RangeSliderSample extends StatefulWidget {
  @override
  _RangeSliderSampleState createState() => _RangeSliderSampleState();
}

class _RangeSliderSampleState extends State<RangeSliderSample> {
  // List of RangeSliders to use, together with their parameters
  List<RangeSliderData> rangeSliders;

  double _lowerValue = 20.0;
  double _upperValue = 80.0;
  double _lowerValueFormatter = 20.0;
  double _upperValueFormatter = 20.0;

  @override
  void initState() {
    super.initState();
    rangeSliders = _rangeSliderDefinitions();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0, left: 0.0, right: 0.0),
      child: Column(
          children: <Widget>[]
            ..addAll(_buildRangeSliders()),

      ),
    );
  }

  List<Widget> _buildRangeSliders() {
    List<Widget> children = <Widget>[];
    for (int index = 0; index < rangeSliders.length; index++) {
      children
          .add(rangeSliders[index].build(context, (double lower, double upper) {
        // adapt the RangeSlider lowerValue and upperValue
        setState(() {
          rangeSliders[index].lowerValue = lower;
          rangeSliders[index].upperValue = upper;
        });
      }));
      // Add an extra padding at the bottom of each RangeSlider
      children.add(SizedBox(height: 8.0));
    }

    return children;
  }

  List<RangeSliderData> _rangeSliderDefinitions() {
    return <RangeSliderData>[
      RangeSliderData(
          min: 0.0,
          max: 100.0,
          lowerValue: 0.0,
          upperValue: 10.0,
          showValueIndicator: false,
          valueIndicatorMaxDecimals: 0),
    ];
  }
}

