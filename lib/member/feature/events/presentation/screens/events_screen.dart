import 'package:cms/member/feature/events/blocs/events_event.dart';
import 'package:cms/styles/colors.dart';
import 'package:cms/styles/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/models/event_model.dart';
import '../../blocs/event_bloc.dart';
import '../../blocs/event_state.dart';
import '../widgets/event_widget.dart';
import '../widgets/past_event_widget.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final eventbloc = context.read<EventBloc>();
    if (eventbloc.state is! EventSucess) {
      eventbloc.add(LoadEvents());
    }
    return Scaffold(
      appBar: AppBar(
        titleSpacing: ScreenPadding.screenPaddingWidth,
        title: const Text(
          "Events",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: BlocBuilder<EventBloc, EventState>(
        builder: (context, state) {
          if (state is InitialState) {
            return const Center(
              child: CircularProgressIndicator(
                color: darkBlue,
              ),
            );
          }
          if (state is EventSucess) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (state.todaysEvents.isNotEmpty) ...[
                      EventWidget(
                          eventHeading: "Today's Events",
                          events: state.todaysEvents),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                    if (state.pastEvents.isNotEmpty) ...[
                      PastEventsWidget(
                        pastEvents: state.pastEvents,
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                    if (state.upcomingEvents.isNotEmpty)
                      EventWidget(
                        eventHeading: "Upcoming Events",
                        events: state.upcomingEvents,
                      ),
                  ],
                ),
              ),
            );
          }
          if (state is EventFailure) {
            return Center(
              child: Text(state.message),
            );
          }
          return const Center(
            child: Text("No Events"),
          );
        },
      ),
    );
  }
}

class PastEventCard extends StatelessWidget {
  final double leftPadding;
  final double rightPadding;
  final EventModel eventModel;
  const PastEventCard({
    super.key,
    this.leftPadding = 0,
    this.rightPadding = 0,
    required this.eventModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: leftPadding,
        right: rightPadding,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: 250.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 90,
                child: Image.network(
                  eventModel.thumbnail,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 38,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          eventModel.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          eventModel.location,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: greyText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
