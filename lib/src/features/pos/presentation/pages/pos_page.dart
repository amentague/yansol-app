import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yansol/src/core/utils/responsive.dart';
import 'package:yansol/src/features/pos/presentation/blocs/pos_config/pos_bloc.dart';
import 'package:yansol/src/features/pos/presentation/pages/pos_desktop.dart';
import 'package:yansol/src/features/pos/presentation/pages/pos_mobile.dart';
import 'package:yansol/src/features/pos/presentation/pages/pos_tablet.dart';

class PosPage extends StatelessWidget {
  const PosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosBloc, PosState>(
      builder: (context, state) {
        if (state is PosLoadedState) {
          return Responsive(
            mobile: PosMobilePage(
              pos: state.pos,
            ),
            desktop: PosDesktopPage(
              pos: state.pos,
            ),
            tablet: PosTabletPage(
              pos: state.pos,
            ),
          );
        } else if (state is PosErrorState) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Text('Something weent wrong!!'),
            ),
          );
        } else {
          return Scaffold(
              appBar: AppBar(),
              body: const Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
