# flutter_embeded_example

Exemplo de estrutura base para trabalhar com flutter em um projeto nativo.

![IMG](https://github.com/RafaelBarbosatec/flutter_embeded_example/blob/main/flutter_embeded.png)

Para que o código nativo encontre o módulo flutter, você precisará rodar o comando `flutter build aar` para android e/ou `flutter build ios-framework` para iOS dentro da pasta `flutter_module` pelo menos uma vez na sua máquina.

# Only IOS
## Necessary adds new "Build Phases"
Ir para `Build Phases`->`+`->`New Run Script Phase` e adicionar esse script:

```
set -e
set -u
source "${SRCROOT}/../flutter_module/.ios/Flutter/flutter_export_environment.sh"
export VERBOSE_SCRIPT_LOGGING=1 && "$FLUTTER_ROOT"/packages/flutter_tools/bin/xcode_backend.sh embed

```
Necessário rodar `pod install` no projeto IOS após `flutter pub get`.

---
Para rodar somente o módulo flutter (flutter_module) execute `flutter run -t 'lib.debug/main.debug.dart'`


Passos para integrar o Flutter no seu app nativo [link](https://flutter.dev/docs/development/add-to-app)
