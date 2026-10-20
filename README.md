# Mentoria - Ruby on Rails

## Encontros e temas

Fundamentos de Ruby

* [05-10-2026](#05-10-2026) Objetos em ruby e separação de responsabilidades
* [11-10-2026](#11-10-2026) Princípios de Arquitetura MVC
* [18-10-2026](#18-10-2026) Princípios de OOP

## Fundamentos Ruby
### 05-10-2026

- Orientação a objetos, separação de responsabilidades, ARGV, performance de hashes(dicts), lambdas para armazenar trechos de código, `binding.irb` para debugar, `.send` para chamar métodos de forma dinâmica, `.call`. 

Exercícios: [criar uma calculadora considerando que ela será um produto](/calculator).

### 11-10-2026

- Quase tudo no Ruby é um objeto. 
- `self` retorna o objeto ou a classe dependendo do contexto em que é chamado. Se chamado dentro de um método de classe, retorna a classe. Se chamado dentro de um método de instância, retorna a instância (ojeto) da classe.
- 90% do mercado atualmente usa o modelo MVC. Os services não são uma nova camada conceitual do modelo model-view-controler, ao contrário, são parte da camada model, apenas em arquivos separados. É importante não confundir as pastas com a camada conceitual, uma vez que elas não necessariamente coincidem. A camada `model` inclui toda a lógica de persistência dos dados e conexão com a base de dados. A camada `controller` lida com requisições http e pode incluir a lógica de negócio. (A lógica de negócio no entanto não deveria estar em services?). `view`, bem simples, renderiza as páginas e templates.
- Sendo tudo em Ruby um objeto, podemos inclusive fazer: `some_object.send(:some_method, some_method_args)`.

Exercício: recriar métodos básicos do Active Record `create`, `find`, `destroy` no projeto [parking-lot](parking-lot/).

### 18-10-2026

As bases de programação baseada em objetos:

[__abstração__](oop-foundations/inheritance.rb): Os atributos e métodos de um objeto devem, de acordo com esse princípio, ser espelhos de objetos reais. Os atributos do objeto `Pessoa`, por exemplo, seriam os atributos de uma pessoa: nome, idade, nacionalidade... Os métodos seriam, por sua vez ações que uma pessoa pode realizar, como `saudar`, `trabalhar`.

[__herança__](oop-foundations/inheritance.rb): atualmente esse ponto é um pouco controverso porque geralmente leva a um forte acoplamento dos objetos, o que dificulta atualizações. É preferível utilizar outras estratégias como módulos. Ressalvas feitas, o princípio da herança diz que uma classe pode herdar os métodos da classe pai e, quando necessário, os métodos da subclasse podem sobrescrever (_overrride_) os métodos da classe pai. 

[__encapsulation__](oop-foundations/encapsulation): cada classe esconde o seu funcionamento interno atrás de métodos com um nome conveniente, o que facilita o raciocínio e esconde a complexidade, que será vista apenas quando necessário. Uma classe pode ter métodos privados, apenas disponíveis para serem utilizados dentro da casse, desse modo a classe é modificada pelo 'mundo externo' apenas de forma controlada. No exemplo dado, o modelo do carro é definido na inicializaçao do objeto e só. Acessar a classificação desse objeto é possível apenas por meio do método `specification`. Apenas o atributo `year` pode ser modificado a partir de um contexto externo, e apenas através do método `upgrade`. Esse esconder e proibir dificulta que novos bugs sejam gerados e facilita na hora de descobrir de onde vêm os erros. Observe que `model` e `year` podem ser lidos apenas por métodos dentro da classe também.
