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
  ActorView();

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
                    height: 600,
                    child: GridView.count(

                      crossAxisCount: 2,
                      children: List.generate(10, (content) {
                        return Card(

                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,

                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Name',
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold, fontSize: 15) ,
                                            ),
                                            Text('(2022)',
                                              style: TextStyle(
                                                  fontSize: 13) ,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text('Thriller',
                                                textAlign: TextAlign.left,
                                                overflow:
                                                TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.bold, fontSize: 10) ,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        );
                      }
                      ),
                    ),
                  )
                ],
              ),

            ),
          )),
    );
  }
}
