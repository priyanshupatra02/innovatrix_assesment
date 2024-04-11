import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:innovatrix_assesment/core/local_storage/app_storage_pod.dart';
import 'package:innovatrix_assesment/core/router/router.gr.dart';
import 'package:innovatrix_assesment/core/router/router_pod.dart';
import 'package:innovatrix_assesment/data/entities/local_user_entity/local_user.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(IconlyLight.logout),
      onPressed: () async {
        // await ref.read(authProvider.notifier).logOut();
        await ref.read(isarProvider).writeTxn(() => ref.read(isarProvider).localUsers.clear());
        ref.invalidate(isarProvider);
        ref.read(autorouterProvider).replaceAll([const LoginBaseRoute()]);
      },
    );
  }
}
