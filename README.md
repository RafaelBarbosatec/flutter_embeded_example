# flutter_embeded_example

Exemplo de estrutura base para trabalhar com flutter em um projeto nativo

![IMG](https://github.com/RafaelBarbosatec/flutter_embeded_example/blob/main/flutter_embeded.png)

Para que o código nativo encontre o módulo flutter, você precisará rodar o comando `flutter build aar` para android e/ou `flutter build ios-framework` para iOS dentro da pasta `flutter_module` pelo menos uma vez na sua máquina.

Necessário rodar `pod install` no projeto IOS após `flutter build ios-framework`.

---
Para rodar somente o módulo flutter (flutter_module) execute `flutter run -t 'lib.debug/main.debug.dart'`
