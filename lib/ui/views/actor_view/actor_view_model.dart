import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../core/models/actor/actor.dart';

class ActorViewModel extends BaseViewModel {
  BuildContext? context;
  Actor? actor;

  Future<void> init(BuildContext context, Actor actor) async {
    this.context = context;

    setBusy(true);

    this.actor = actor;

    setBusy(false);
  }
}
