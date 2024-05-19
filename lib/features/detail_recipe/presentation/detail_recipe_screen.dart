import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/presentation/widgets/info_widget.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

@RoutePage()
class DetailRecipeScreen extends StatefulWidget {
  const DetailRecipeScreen({super.key});

  @override
  State<DetailRecipeScreen> createState() => _DetailRecipeScreenState();
}

class _DetailRecipeScreenState extends State<DetailRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(children: [_buildImage(context), Positioned(child: InfoWidget())]),
      ),
    );
  }

  Container _buildImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.301,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://img1.russianfood.com/dycontent/images_upl/332/big_331048.jpg'),
            fit: BoxFit.cover),
      ),
    );
  }
}
