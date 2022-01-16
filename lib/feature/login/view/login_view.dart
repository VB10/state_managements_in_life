import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../../product/constant/image_enum.dart';
import '../../../product/model/state/user_context.dart';
import '../../../product/padding/page_padding.dart';
import '../../../product/utility/input_decorations.dart';
import '../viewModel/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final String name = 'Name';
  final String data = 'Login';
  final login = 'Login';
  final String data2 = 'Remember me';

  final LoginViewModel _loginViewModel = LoginViewModel();
  @override
  void initState() {
    super.initState();
    print(context.read<UserContext?>()?.name);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _loginViewModel,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.read<UserContext?>()?.name ?? ''),
            leading: _loadingWidget(),
          ),
          body: Padding(
            padding: const PagePadding.allLow(),
            child: Column(
              children: [
                AnimatedContainer(
                  duration: context.durationLow,
                  height: context.isKeyBoardOpen ? 0 : context.dynamicHeight(0.2),
                  width: context.dynamicWidth(0.3),
                  child: ImageEnums.door.toImage,
                ),
                Text(
                  login,
                  style: context.textTheme.headline3,
                ),
                TextField(decoration: ProjectInputs(name)),
                ElevatedButton(
                    onPressed: _loginViewModel.isLoading
                        ? null
                        : () {
                            _loginViewModel.controlTextValue();
                          },
                    child: Center(child: Text(data))),
                CheckboxListTile(
                  value: _loginViewModel.isCheckBoxOkay,
                  title: Text(data2),
                  onChanged: (value) {
                    _loginViewModel.checkBoxChange(value ?? false);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _loadingWidget() {
    return Selector<LoginViewModel, bool>(
      selector: (context, viewModel) {
        return viewModel.isLoading;
      },
      builder: (context, value, child) {
        return value ? const Center(child: CircularProgressIndicator()) : const SizedBox();
      },
    );
    return Consumer<LoginViewModel>(builder: (context, value, child) {
      return value.isLoading ? Center(child: CircularProgressIndicator()) : SizedBox();
    });
  }
}
