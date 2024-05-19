import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/auth_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/bloc/home_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/widgets/build_grid_view.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/manage_profile/presentation/widgets/resend_email_widget.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

@RoutePage()
class ManageProfileScreen extends StatefulWidget {
  const ManageProfileScreen({Key? key}) : super(key: key);

  @override
  State<ManageProfileScreen> createState() => _ManageProfileScreenState();
}

class _ManageProfileScreenState extends State<ManageProfileScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          ResendEmailWidget(
            email: 'sdfsdfdsf',
            // registrationModel: registrationModel,
          )
        ],
      )),
    );
  }
}
