import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yansol/src/features/company/presentation/bloc/company_bloc.dart';
import 'package:yansol/src/features/users/presentation/bloc/user_bloc.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  BlocProvider.of<CompanyBloc>(context)
                      .add(const GetCompanyEvent(2));
                },
                icon: const Icon(Icons.download))
          ],
        ),
        body: BlocBuilder<CompanyBloc, CompanyState>(
          builder: (context, state) {
            if (state is CompanyLoadedState) {
              return Column(
                children: [
                  Text('${state.company.id}'),
                  Text(state.company.name),
                  Text(state.company.city!)
                ],
              );
            } else {
              return const Text('Error');
            }
          },
        ));
  }
}
