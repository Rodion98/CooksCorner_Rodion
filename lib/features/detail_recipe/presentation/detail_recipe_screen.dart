import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/presentation/bloc/detail_recipe_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/presentation/widgets/info_widget.dart';

@RoutePage()
class DetailRecipeScreen extends StatefulWidget {
  final int? id;
  const DetailRecipeScreen({
    required this.id,
  });

  @override
  State<DetailRecipeScreen> createState() => _DetailRecipeScreenState();
}

class _DetailRecipeScreenState extends State<DetailRecipeScreen> {
  @override
  void initState() {
    context.read<DetailRecipeBloc>().add(DetailRecipeEvent.getRecipeDetail(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailRecipeBloc, DetailRecipeState>(
        builder: (context, state) {
          return state.recipeDetailEntity == null
              ? Center(child: CircularProgressIndicator())
              : InfoWidget(recipe: state.recipeDetailEntity!);
        },
      ),
    );
  }
}
