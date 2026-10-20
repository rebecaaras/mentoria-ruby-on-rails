# Mentoria - Ruby on Rails

## Fundamentos Ruby
**05-10-2026**
Orientação a objetos, separação de responsabilidades, ARGV, performance de hashes(dicts), lambdas para armazenar trechos de código, binding.irb para debugar, `.send` para chamar métodos de forma dinâmica, `.call`. 
Exercícios: [criar uma calculadora considerando que ela será um produto](/calculator).

**11-10-2026**
- Quase tudo no Ruby é um objeto. 
- `self` retorna o objeto ou a classe dependendo do contexto em que é chamado. Se chamado dentro de um método de classe, retorna a classe. Se chamado dentro de um método de instância, retorna a instância (ojeto) da classe.
- 90% do mercado atualmente usa o modelo MVC. Os services não são uma nova camada conceitual do modelo model-view-controler, ao contrário, são parte da camada model, apenas em arquivos separados. É importante não confundir as pastas com a camada conceitual, uma vez que elas não necessariamente coincidem. A camada `model` inclui toda a lógica de persistência dos dados e conexão com a base de dados. A camada `controller` lida com requisições http e pode incluir a lógica de negócio. (A lógica de negócio no entanto não deveria estar em services?). `view`, bem simples, renderiza as páginas e templates.
- Sendo tudo em Ruby um objeto, podemos inclusive fazer: `some_object.send(:some_method, some_method_args)`.

**12-10-2026**
