import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movieapp/core/models/actor/actor.dart';
import 'package:movieapp/core/models/movie/movie.dart';
import 'package:stacked/stacked.dart';

class ActorViewModel extends BaseViewModel {
  BuildContext? context;
  Actor? actor;

  Future<void> init(BuildContext context, Movie movie) async {
    this.context = context;

    setBusy(true);

    this.actor = actor;

    setBusy(false);
  }
}
