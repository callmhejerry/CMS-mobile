import "package:cms/admin/feature/admins/presentation/widgets/admin_screen_tile_widget.dart";
import "package:cms/styles/colors.dart";
import "package:cms/styles/dimensions.dart";
import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../../../../shared/authentication/models/admin_model.dart";
import "../../blocs/overview_bloc.dart";
import "../../blocs/overview_state.dart";
import "../../models/stats.dart";

class OverViewScreen extends StatelessWidget {
  const OverViewScreen({super.key});

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>[
      "Gender",
      "Single",
      "Married",
      "Divorse",
    ];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }

  List<BarChartGroupData> makeGroupData(Stats stat) {
    return List<BarChartGroupData>.generate(4, (index) {
      switch (index) {
        case 0:
          return BarChartGroupData(
            barsSpace: 4,
            x: index,
            barRods: [
              BarChartRodData(
                toY: stat.totalWomen.toDouble(),
                color: Colors.pink,
                borderRadius: BorderRadius.zero,
              ),
              BarChartRodData(
                toY: stat.totalMen.toDouble(),
                color: Colors.green,
                borderRadius: BorderRadius.zero,
                // width: width,
              ),
            ],
          );
        case 1:
          return BarChartGroupData(
            barsSpace: 4,
            x: index,
            barRods: [
              BarChartRodData(
                toY: stat.single["men"].toDouble(),
                color: Colors.pink,
                borderRadius: BorderRadius.zero,
              ),
              BarChartRodData(
                toY: stat.married["women"].toDouble(),
                color: Colors.green,
                borderRadius: BorderRadius.zero,
                // width: width,
              ),
            ],
          );
        case 2:
          return BarChartGroupData(
            barsSpace: 4,
            x: index,
            barRods: [
              BarChartRodData(
                toY: stat.married["women"].toDouble(),
                color: Colors.pink,
                borderRadius: BorderRadius.zero,
              ),
              BarChartRodData(
                toY: stat.married["men"].toDouble(),
                color: Colors.green,
                borderRadius: BorderRadius.zero,
                // width: width,
              ),
            ],
          );
        default:
          return BarChartGroupData(
            barsSpace: 4,
            x: index,
            barRods: [
              BarChartRodData(
                toY: stat.divorse["women"].toDouble(),
                color: Colors.pink,
                borderRadius: BorderRadius.zero,
              ),
              BarChartRodData(
                toY: stat.divorse["men"].toDouble(),
                color: Colors.green,
                borderRadius: BorderRadius.zero,
                // width: width,
              ),
            ],
          );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenPadding.screenPaddingWidth,
                vertical: ScreenPadding.screenPaddingWidth,
              ),
              child: AdminScreenTileWidget(
                admin: AdminModel(
                  church: "Lam awka",
                  emailAddress: "test@test.com",
                  firstName: "Jeremiah",
                  id: "2222",
                  lastName: "Chinedu",
                  phoneNumber: "09034",
                ),
              ),
            ),
            BlocBuilder<OverviewBloc, OverviewState>(
              builder: (context, state) {
                if (state is OverViewFailureState) {
                  return Center(
                    child: Text(state.message),
                  );
                }
                return Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: ScreenPadding.screenPaddingWidth,
                          ),
                          child: const Text(
                            "Church Stats",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenPadding.screenPaddingWidth,
                          vertical: 16.h,
                        ),
                        sliver: SliverGrid(
                          delegate: SliverChildListDelegate(
                            List.generate(
                              4,
                              (index) {
                                final titles = {
                                  "Members": state is OverviewSuccessState
                                      ? state.stats.totalMembers
                                      : 0,
                                  "Total Events": state is OverviewSuccessState
                                      ? state.stats.totalEvents
                                      : 0,
                                  "Men": state is OverviewSuccessState
                                      ? state.stats.totalMen
                                      : 0,
                                  "Women": state is OverviewSuccessState
                                      ? state.stats.totalWomen
                                      : 0,
                                };

                                final icons = [
                                  const Icon(Icons.people, color: Colors.teal),
                                  const Icon(Icons.event,
                                      color: Colors.deepPurpleAccent),
                                  const Icon(Icons.male, color: Colors.green),
                                  const Icon(Icons.female, color: Colors.pink),
                                ];
                                bool value = state is OverviewSuccessState;
                                return ChurchStatsCard(
                                  icons: icons,
                                  titles: titles.keys.toList(),
                                  index: index,
                                  state: value,
                                  data: titles,
                                );
                              },
                            ),
                          ),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 16,
                            childAspectRatio: 82 / 76,
                            crossAxisSpacing: 16,
                            // mainAxisExtent: 70,
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                          height: 300.h,
                          padding: EdgeInsets.symmetric(
                            vertical: ScreenPadding.screenPaddingWidth,
                            horizontal: ScreenPadding.screenPaddingWidth,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                // mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,

                                children: [
                                  const Text(
                                    "Membership Stats",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    color: Colors.green,
                                  ),
                                  const Text(
                                    "Men",
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    color: Colors.pink,
                                  ),
                                  const Text(
                                    "Women",
                                    style: TextStyle(color: Colors.pink),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              BlocBuilder<OverviewBloc, OverviewState>(
                                builder: (context, state) {
                                  if (state is OverviewInitialState) {
                                    return const Expanded(
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          color: darkBlue,
                                        ),
                                      ),
                                    );
                                  }
                                  if (state is OverviewSuccessState) {
                                    return Expanded(
                                      child: BarChart(
                                        BarChartData(
                                          maxY: state.stats.totalMembers
                                              .toDouble(),
                                          // groupsSpace: 100,
                                          titlesData: FlTitlesData(
                                            topTitles: AxisTitles(
                                              sideTitles:
                                                  SideTitles(showTitles: false),
                                            ),
                                            bottomTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                getTitlesWidget: bottomTitles,
                                                showTitles: true,
                                                reservedSize: 42,
                                              ),
                                            ),
                                          ),
                                          barGroups: makeGroupData(
                                            state.stats,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  return const SizedBox.shrink();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ChurchStatsCard extends StatelessWidget {
  const ChurchStatsCard({
    super.key,
    required this.icons,
    required this.titles,
    required this.state,
    required this.index,
    required this.data,
  });

  final List<Icon> icons;
  final List<String> titles;
  final bool state;
  final int index;
  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 6.w,
              ),
              icons[index],
              SizedBox(
                width: 8.w,
              ),
              Text(
                titles[index],
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 2,
          ),
          !state
              ? const Expanded(
                  flex: 6,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: darkBlue,
                    ),
                  ),
                )
              : Text(
                  data[titles[index]].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
