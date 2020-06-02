import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:layout/pages/signup.page.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Quando expandir a pagina e quebra o tamanho, vai habilitar o scroll
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only( 
            left: 20, 
            top: 80, 
            right: 20, 
            bottom: 40 
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 450,
                //Boxdecoration para colocar a sombra com box shadow
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      offset: new Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 60),
                  // Os inputs devem estar dentro de um Form para efetuar as validações
                  child: Form(
                    key: _formKey,
                    child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(children: <Widget>[
                              Text("Welcome,", style: Theme.of(context).textTheme.headline4
                              ),
                              Text("Sign in to continue"),
                            ],
                          ),
                          FlatButton(
                            child: Text("Sign Up", 
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              ),
                            ),
                            onPressed: (){
                              // Para ir para a pagina na propriedade builder do MaterialPageRoute
                              // O push joga uma pagina em cima da outra, assim na pagina seguinte aparece
                              // o botão de voltar no appBar(na pagina criada deve ter im appbar) que faz o "pop" que seria tirar a pagina
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        //autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        //Validação, a mensagem retornada será mostrada no input
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Invalid E-mail';
                          }
                          return null;
                        },
                        onSaved: (input) => _email = input,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        //Faz o efeito da senha
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          )
                        ),
                        style: TextStyle(
                          fontSize: 20
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Invalid Password';
                          }
                          return null;
                        },
                        onSaved: (input) => _password = input,
                      ),
                      Container(
                        height: 40,
                        // Alinha os itens dentro do container
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          child: Text("Forgot your password?",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: FlatButton(
                          child: Text(
                            "Sign In", 
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            //Validação
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();

                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Welcome, $_email'),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                ),
                  ),
                )
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "- OR -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    // espeçura da borda em milimetros
                    width: 2.0,
                    color: Theme.of(context).accentColor,
                  ),
                  // Arredondamento da borda
                  borderRadius: BorderRadius.all(
                    Radius.circular(5)
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/facebook.png",
                        ),
                      ),
                      Text("Sign In with Facebook"),
                    ],
                  ),
                  onPressed: (){},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).accentColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5)
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/google.png",
                        ),
                      ),
                      Text("Sign In with Google"),
                    ],
                  ),
                  onPressed: (){},
                ),
              )
            ],
          )
        ),
      )
    );
  }
}