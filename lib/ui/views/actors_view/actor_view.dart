import 'dart:math';

import 'package:flutter/material.dart';
import 'package:movieapp/ui/shared/ui_helper.dart';
import 'package:stacked/stacked.dart';

import '/ui/shared/ui_helper.dart';
import '/ui/widgets/stateless/app_bar.dart';
import '../../widgets/stateless/indicators/loading_circular_progress_indicator.dart';
import 'actor_view_model.dart';

// ignore: must_be_immutable
class ActorView extends StatefulWidget {
  ActorView({required actor});

  @override
  _ActorViewState createState() => _ActorViewState();
}

class _ActorViewState extends State<ActorView>
    with SingleTickerProviderStateMixin {
  @override
  void didUpdateWidget(ActorView oldWidget) {
    // if (oldWidget.listPreferences != widget.listPreferences) {
    //   _pagingController.refresh();
    // }
    super.didUpdateWidget(oldWidget);
  }

  TextEditingController? commentController;
  FocusNode? commentFocusNode;

  @override
  void initState() {
    super.initState();
    commentController = TextEditingController();

    commentFocusNode = FocusNode();
  }

  @override
  void dispose() {
    commentController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ActorViewModel>.reactive(
      viewModelBuilder: () => ActorViewModel(),
      onModelReady: (model) async {
        //await model.init(context, widget.movie!);
      },
      builder: (context, model, child) => model.isBusy
          ? Scaffold(
              //  drawer: Drawer(child: CustomerDrawerMenu()),
              appBar: MyAppBar(),
              body: LoadingCircularProgressIndicator())
          : Scaffold(
              appBar: MyAppBar("Actors"),
              body: model.isBusy
                  ? LoadingCircularProgressIndicator()
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              margin: EdgeInsets.all(8),
                              child: Container(
                                height: 200,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        //color: Colors.r,
                                        child: Image.network(
                                          'https://picsum.photos/250?image=9',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 40, right: 40, top: 65),
                                          child: Column(
                                            children: [
                                              UIHelper.verticalSpaceLarge(),
                                              Row(
                                                
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Actor Name',
                                                      textAlign: TextAlign.center,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold, fontSize: 20) ,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),

                            Container(
                              height: 250,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: Iterable<int>.generate(20)
                                    .map((e) => InkWell(
                                  onTap: () async {
                                    
                                  },
                                  child: Card(
                                    elevation: 2,
                                    margin: EdgeInsets.all(8),
                                    child: Container(
                                      width: 200,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Expanded(
                                            flex: 7,
                                            child: Container(
                                              //color: Colors.r,
                                              child: Image.network(
                                                'https://picsum.photos/250?image='+'${Random().nextInt(50)}',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 3,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 8),
                                                child: Column(
                                                  children: [
                                                    UIHelper.verticalSpaceSmall(),
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            'Actor',
                                                            maxLines: 1,
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'Thriler',
                                                          style: TextStyle(),
                                                        ),
                                                        UIHelper
                                                            .horizontalSpaceSmall(),
                                                      ],
                                                    ),
                                                    UIHelper.horizontalSpaceLarge(),
                                                  
                                                  ],
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                )) // TODO move this section to staeLess widgets
                                    .toList(),
                              ),
                            ),

                          ],
                        ),
                      ),
                    )),
    );
  }
}
