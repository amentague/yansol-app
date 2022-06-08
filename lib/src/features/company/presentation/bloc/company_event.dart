part of 'company_bloc.dart';

abstract class CompanyEvent extends Equatable {
  const CompanyEvent();

  @override
  List<Object> get props => [];
}

class GetCompanyEvent extends CompanyEvent {
  const GetCompanyEvent(this.id);
  final int id;
}
