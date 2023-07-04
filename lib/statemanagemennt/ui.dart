// Cubit

// import 'package:bloc_testing/bloc/counter_bloc.dart';
import 'package:bloc_testing/states/bloc/counter_bloc.dart';
import 'package:bloc_testing/states/cube/cube_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_testing/states/bloc/counter_bloc.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    getState();
    super.initState();
  }

  getState() {
    final myCube = BlocProvider.of<CubeCubit>(context);
    //context.read<CubeCubit>();

    print(myCube.state);
  }

  updateData() {
    // context.read<CubeCubit>().changeInitialToUpdateCubit();

    context.read<CounterBloc>().add(ChangeCounter(bythisValue: 20));
  }

  login() {
    final authBloc = BlocProvider.of<CounterBloc>(context);

    authBloc.add(OnLogin(name: 'ade'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('State Management')),
      body: BlocListener<CounterBloc, CounterState>(
        listener: (context, state) {
          if (state.counter >= 30) {
             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('counter is incresing...')));
          }
        },
        child: Column(
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text('${state.counter}');
              },
            ),
            BlocBuilder<CubeCubit, CubeState>(
              builder: (context, state) {
                return Text(
                    'this is the state ${state is CubeInitial ? 'default' : 'data'}');
              },
              buildWhen: (previous, current) {
                return previous != current;
              },
            ),
            OutlinedButton(onPressed: updateData, child: Text('update'))
          ],
        ),
      ),
    );
  }
}

// abstract class Multiple<Type, Return, Params>{
//    Return register(Type t);
// }

// class Child implements Multiple<int, List, int>{

//   @override
//   List register(int t) {
//     // TODO: implement register
//     throw UnimplementedError();
//   }

// }
// class Child2 implements Multiple<String, Map, int>{
//   @override
//   Map register(String t) {
//     // TODO: implement register
//     throw UnimplementedError();
//   }

// }



// A a = A(sharedp: "");




// class A {
//   final String sharedp


//   A({
//     required this.sharedp
//   })

//   register(){
//      sharedp
//   }
// }


