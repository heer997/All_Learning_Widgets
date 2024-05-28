import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/Align_Widget/Align_widget.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/App_Drawer/App_Drawer.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/Third_page.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";
import "package:sdreatech_learning_widget/AspectRatio/AspectRatio.dart";
import "package:sdreatech_learning_widget/Baseline_Widget/Baseline_widget.dart";
import "package:sdreatech_learning_widget/BottomNavigationBar/bottomNavigationBar.dart";
import "package:sdreatech_learning_widget/BottomSheet/BottomSheet.dart";
import "package:sdreatech_learning_widget/CheckBox/checkbox.dart";
import "package:sdreatech_learning_widget/Chip/ChoiceChip.dart";
import "package:sdreatech_learning_widget/CircleProgressIndicator/circularprogressindicator.dart";
import "package:sdreatech_learning_widget/ClipOval/clipOval.dart";
import "package:sdreatech_learning_widget/ClipPath/ClipPath.dart";
import "package:sdreatech_learning_widget/ClipRRect/cliprrect_widget.dart";
import "package:sdreatech_learning_widget/ConstrainedBox/ConstrainedBox.dart";
import "package:sdreatech_learning_widget/CustomMultiChildLayout/CustomMultiChildLayout.dart";
import "package:sdreatech_learning_widget/CustomPaint/customPaint.dart";
import "package:sdreatech_learning_widget/CustomScrollView/CustomScrollView.dart";
import "package:sdreatech_learning_widget/CustomSingleChildLayout/CustomSingleChildLayout.dart";
import "package:sdreatech_learning_widget/DataTable/DataTable.dart";
import "package:sdreatech_learning_widget/Date_and_Time_picker/DatePicker_TimePicker.dart";
import "package:sdreatech_learning_widget/DecoratedBox/decoratedbox.dart";
import "package:sdreatech_learning_widget/DropdonwButton/dropdownbutton.dart";
import "package:sdreatech_learning_widget/Expanded/expanded.dart";
import "package:sdreatech_learning_widget/ExpansionPanel_Widget/ExpansionPanel_widget.dart";
import "package:sdreatech_learning_widget/FittedBox_Widget/FittedBox_widget.dart";
import "package:sdreatech_learning_widget/Flexible_Widget/Flexible_widget.dart";
import "package:sdreatech_learning_widget/Flow_Widget/Flow_Widget.dart";
import "package:sdreatech_learning_widget/Fractionally_SizedBox/Fractionally_SizedBox.dart";
import "package:sdreatech_learning_widget/GridView/GridView.dart";
import "package:sdreatech_learning_widget/LayoutBuilder/layoutbuilder.dart";
import "package:sdreatech_learning_widget/LimitedBox_Widget/LimitedBox_Widget.dart";
import "package:sdreatech_learning_widget/LinearProgressIndicator/linearprogressindicator.dart";
import "package:sdreatech_learning_widget/ListBody_Widget/ListBody_Widget.dart";
import "package:sdreatech_learning_widget/MediaQuery/MediaQuery.dart";
import "package:sdreatech_learning_widget/NestedScrollView/NestedScrollView.dart";
import "package:sdreatech_learning_widget/Opacity/opacity.dart";
import "package:sdreatech_learning_widget/OverflowBox/OverflowBox.dart";
import "package:sdreatech_learning_widget/PageView/pageView_Widget.dart";
import "package:sdreatech_learning_widget/Placeholder/Placeholder.dart";
import "package:sdreatech_learning_widget/PopupMenuButton/popupmenubutton.dart";
import "package:sdreatech_learning_widget/RadioButton/radioButton.dart";
import "package:sdreatech_learning_widget/RefreshIndicator/refreshIndicator.dart";
import "package:sdreatech_learning_widget/RotatedBox/RotatedBox.dart";
import "package:sdreatech_learning_widget/Scrollbar/Scrollbar.dart";
import "package:sdreatech_learning_widget/SliderTransition/SliderTransition.dart";
import "package:sdreatech_learning_widget/Slider_Range/Range_Slider.dart";
import "package:sdreatech_learning_widget/Sliver/SliverList_SliverGrid.dart";
import "package:sdreatech_learning_widget/Sliver/SliverPadding.dart";
import "package:sdreatech_learning_widget/Sliver/SliverPersistentHeader.dart";
import "package:sdreatech_learning_widget/Sliver/SliverToBoxAdapter.dart";
import "package:sdreatech_learning_widget/SliverAppBar/SliverAppBar.dart";
import "package:sdreatech_learning_widget/Stack/stack_container.dart";
import "package:sdreatech_learning_widget/Stepper_Widget/Stepper_widget.dart";
import "package:sdreatech_learning_widget/Switch/switch.dart";
import "package:sdreatech_learning_widget/TabBar/TabBar.dart";
import "package:sdreatech_learning_widget/Table_Widget/Table_Widget.dart";
import "package:sdreatech_learning_widget/Theme/Theme.dart";
import "package:sdreatech_learning_widget/Toast_Message/Toast_message.dart";
import "package:sdreatech_learning_widget/ToggleButtons/ToggleButtons.dart";
import "package:sdreatech_learning_widget/ToggleSwitch/ToggleSwitch.dart";
import "package:sdreatech_learning_widget/Tooltip/Tooltip.dart";
import "package:sdreatech_learning_widget/Transform_Widget/Transform_widget.dart";
import "package:sdreatech_learning_widget/Wrap/wrap_widget.dart";
import "package:sdreatech_learning_widget/checkBox_Task/checkBox_List.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "All Learning widget ui",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const AllwidgetUi(),
    );
  }
}

class AllwidgetUi extends StatefulWidget {
  const AllwidgetUi({super.key});

  @override
  State<AllwidgetUi> createState() => _AllwidgetUiState();
}

class _AllwidgetUiState extends State<AllwidgetUi> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "All Learning Widget",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        drawer: AppDrawer2.appDrawer(context),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  count.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 40.0),
                ),
                const SizedBox(height: 40.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NextScreen(count: count);
                      },
                    ),
                  );
                }, "Go to Next Page"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const RecommendedCustom();
                      },
                    ),
                  );
                }, "CustomScrollView"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return BasicSliverAppBar();
                      },
                    ),
                  );
                }, "SliverAppBar"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return GridViewPractice();
                      },
                    ),
                  );
                }, "GridView"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const BottomNavigationBarDemo();
                      },
                    ),
                  );
                }, "BottomNavigationBar"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const StackContainer();
                      },
                    ),
                  );
                }, "Stack"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PageViewPractice();
                      },
                    ),
                  );
                }, "PageView"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ExpandedPractice();
                      },
                    ),
                  );
                }, "Expanded Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CircularProgressPractice();
                      },
                    ),
                  );
                }, "CircularProgressIndicator"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const MediaQueryPractice();
                      },
                    ),
                  );
                }, "MediaQuery"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ClipRRectPractice();
                      },
                    ),
                  );
                }, "ClipRRect"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const RefreshIndicatorPractice();
                      },
                    ),
                  );
                }, "RefreshIndicator"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LinearProgressIndicatorPractice();
                      },
                    ),
                  );
                }, "LinearProgressIndicator"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ClipOvalPractice();
                      },
                    ),
                  );
                }, "ClipOval"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DateTimePickerPractice();
                      },
                    ),
                  );
                }, "DateTime Picker"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RadioButtonPractice();
                      },
                    ),
                  );
                }, "RadioButton"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RangeSliderPractice();
                      },
                    ),
                  );
                }, "Range Slider"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SwitchPractice();
                      },
                    ),
                  );
                }, "Switch"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PopupMenuButtonPractice();
                      },
                    ),
                  );
                }, "PopupMenuButton"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CheckBoxListTilePractice();
                      },
                    ),
                  );
                }, "CheckBox"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DropDownButtonPractice();
                      },
                    ),
                  );
                }, "DropdownButton"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const WrapWidgetPractice();
                      },
                    ),
                  );
                }, "Wrap Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LayoutBuilderPractice();
                      },
                    ),
                  );
                }, "LayoutBuilder"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ToastMessage();
                      },
                    ),
                  );
                }, "Toast Message"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const AspectRatioPractice();
                      },
                    ),
                  );
                }, "AspectRatio Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ConstrainedBoxPractice();
                      },
                    ),
                  );
                }, "ConstrainedBox"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const FlexibleWidgetPractice();
                      },
                    ),
                  );
                }, "Flexible Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PlaceholderWidgetPractice();
                      },
                    ),
                  );
                }, "Placeholder"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const AlignWidgetPractice();
                      },
                    ),
                  );
                }, "Align Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CheckBoxListPracticeTask();
                      },
                    ),
                  );
                }, "CheckBox Task"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DecoratedBoxPractice();
                      },
                    ),
                  );
                }, "DecoratedBox Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ToggleBarPractice();
                      },
                    ),
                  );
                }, "ToggleButton"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ToggleSwitchPractice();
                      },
                    ),
                  );
                }, "ToggleSwitch"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const TabBarPractice();
                      },
                    ),
                  );
                }, "TabBar Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const TooltipPractice();
                      },
                    ),
                  );
                }, "Tooltip"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ScrollbarPractice();
                      },
                    ),
                  );
                }, "Scrollbar"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const OpacityPractice();
                      },
                    ),
                  );
                }, "Opacity"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const NestedScrollViewPractice();
                      },
                    ),
                  );
                }, "NestedScrollView"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const RotatedBoxPractice();
                      },
                    ),
                  );
                }, "RotatedBox"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SliderTransitionPractice();
                      },
                    ),
                  );
                }, "SliderTransition"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CustomPaintPractice();
                      },
                    ),
                  );
                }, "CustomPaint"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const BottomSheetPractice();
                      },
                    ),
                  );
                }, "BottomSheet"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ExpansionPanelPractice();
                      },
                    ),
                  );
                }, "ExpansionPanel"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ChoiceChipPractice();
                      },
                    ),
                  );
                }, "ChoiceChip"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ClipPathPractice();
                      },
                    ),
                  );
                }, "ClipPath"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const StepperWidgetPractice();
                      },
                    ),
                  );
                }, "Stepper Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DataTablePractice();
                      },
                    ),
                  );
                }, "DataColumn"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const BaselineWidgetPractice();
                      },
                    ),
                  );
                }, "Baseline Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const FittedBoxWidgetPractice();
                      },
                    ),
                  );
                }, "FittedBox Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CustomSingleChildLayoutWidgetPractice();
                      },
                    ),
                  );
                }, "CustomSingleChildLayout"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const FractionallySizedBoxWidgetPractice();
                      },
                    ),
                  );
                }, "FractionallySizedBox"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SliverWidgetPractice();
                      },
                    ),
                  );
                }, "SliverList_SliverGrid"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SliverPaddingWidgetPractice();
                      },
                    ),
                  );
                }, "SliverPadding"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SliverPersistentHeaderWidgetPractice();
                      },
                    ),
                  );
                }, "SliverPersistentHeader"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SliverToBoxAdapterWidgetPractice();
                      },
                    ),
                  );
                }, "SliverToBoxAdapter"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LimitedBoxWidgetPractice();
                      },
                    ),
                  );
                }, "LimitedBox Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const OverflowBoxWidgetPractice();
                      },
                    ),
                  );
                }, "OverflowBox"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const TransformWidgetPractice();
                      },
                    ),
                  );
                }, "Transform"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const FlowWidgetPractice();
                      },
                    ),
                  );
                }, "Flex Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ListBodyWidgetPractice();
                      },
                    ),
                  );
                }, "ListBody"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const TableWidgetPractice();
                      },
                    ),
                  );
                }, "Table Widget"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ThemePracticeTutorial();
                      },
                    ),
                  );
                }, "Theme"),
                const SizedBox(height: 20.0),
                UiHelper.elevatedButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CustomMultiChildLayoutWidgetPracticeTutorial();
                      },
                    ),
                  );
                }, "CustomMultiChildLayout"),
                const SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(
                  () {
                    count++;
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Value is increased..."),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                );
              },
              heroTag: "Both",
              backgroundColor: Colors.blue,
              child: const Icon(Icons.add, size: 30.0, color: Colors.white),
            ),
            const SizedBox(width: 20.0),
            FloatingActionButton(
              onPressed: () {
                setState(
                  () {
                    count--;
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Value is decreased...",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                );
              },
              heroTag: "Together",
              backgroundColor: Colors.brown,
              child: const Icon(Icons.remove, size: 30.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  int count;

  NextScreen({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Next Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            const SizedBox(height: 40.0),
            UiHelper.elevatedButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ThirdPage();
                  },
                ),
              );
            }, "Go to third Page"),
          ],
        ),
      ),
    );
  }
}
